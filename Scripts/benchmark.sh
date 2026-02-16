#!/usr/bin/env bash
set -euo pipefail

# ── Paths ─────────────────────────────────────────────────────────────────────
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
WITH_MACRO="$REPO/Benchmarks/WithMacro"
WITHOUT_MACRO="$REPO/Benchmarks/WithoutMacro"
TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT

# ── Prerequisites ─────────────────────────────────────────────────────────────
if ! command -v hyperfine &>/dev/null; then
    echo "Error: hyperfine not found. Install with: brew install hyperfine" >&2
    exit 1
fi

# ── Project setup ─────────────────────────────────────────────────────────────
echo "==> Setting up Tuist projects..."
(cd "$WITH_MACRO"    && tuist install && tuist generate --no-open)
(cd "$WITHOUT_MACRO" && tuist generate --no-open)

# ── Helpers ───────────────────────────────────────────────────────────────────
measure() {
    local label="$1"
    local cmd="$2"
    hyperfine --runs 1 --warmup 0 \
        --export-json "$TMP/${label}.json" \
        "$cmd"
}

# ── Measurements ──────────────────────────────────────────────────────────────
echo ""
echo "==> Measuring... (this will take several minutes)"
echo ""

# Clean Debug
echo "  [1/5] Clean Debug..."
measure "clean_dbg_macro"   "tuist build Project --clean --path \"$WITH_MACRO\"    --platform ios --configuration Debug"
measure "clean_dbg_nomacro" "tuist build Project --clean --path \"$WITHOUT_MACRO\" --platform ios --configuration Debug"

# Clean Release
echo "  [2/5] Clean Release..."
measure "clean_rel_macro"   "tuist build Project --clean --path \"$WITH_MACRO\"    --platform ios --configuration Release"
measure "clean_rel_nomacro" "tuist build Project --clean --path \"$WITHOUT_MACRO\" --platform ios --configuration Release"

# Incremental Debug (warm up with a clean build, then measure a no-op rebuild)
echo "  [3/5] Incremental Debug (warming up)..."
tuist build Project --clean --path "$WITH_MACRO"    --platform ios --configuration Debug
tuist build Project --clean --path "$WITHOUT_MACRO" --platform ios --configuration Debug
echo "      Measuring incremental..."
measure "inc_dbg_macro"   "tuist build Project --path \"$WITH_MACRO\"    --platform ios --configuration Debug"
measure "inc_dbg_nomacro" "tuist build Project --path \"$WITHOUT_MACRO\" --platform ios --configuration Debug"

# Incremental Release
echo "  [4/5] Incremental Release (warming up)..."
tuist build Project --clean --path "$WITH_MACRO"    --platform ios --configuration Release
tuist build Project --clean --path "$WITHOUT_MACRO" --platform ios --configuration Release
echo "      Measuring incremental..."
measure "inc_rel_macro"   "tuist build Project --path \"$WITH_MACRO\"    --platform ios --configuration Release"
measure "inc_rel_nomacro" "tuist build Project --path \"$WITHOUT_MACRO\" --platform ios --configuration Release"

# Test Execution
echo "  [5/5] Test Execution..."
measure "test_macro"   "cd \"$WITH_MACRO\" && tuist test Project"
measure "test_nomacro" "cd \"$WITHOUT_MACRO\" && tuist test Project"

# ── Generate Markdown ─────────────────────────────────────────────────────────
echo "==> Generating report..."
python3 Scripts/build_report.py \
    "$TMP/clean_dbg_macro.json"   "$TMP/clean_dbg_nomacro.json" \
    "$TMP/clean_rel_macro.json"   "$TMP/clean_rel_nomacro.json" \
    "$TMP/inc_dbg_macro.json"     "$TMP/inc_dbg_nomacro.json"   \
    "$TMP/inc_rel_macro.json"     "$TMP/inc_rel_nomacro.json"   \
    "$TMP/test_macro.json"        "$TMP/test_nomacro.json"       \
    "$REPO/BenchmarkResults.md"
