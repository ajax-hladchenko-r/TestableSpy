#!/usr/bin/env bash
set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MACRO_DIR="$REPO/Benchmarks/WithMacro"
NOMACRO_DIR="$REPO/Benchmarks/WithoutMacro"
RAW="$REPO/benchmark_raw"
OUTPUT="$REPO/BenchmarkResults.md"
mkdir -p "$RAW"

echo "=== TestableSpy Benchmark ==="
echo "Repo: $REPO"
echo ""

# ── Clean debug ────────────────────────────────────────────────────────────────
echo "[1/8] Clean debug — WithMacro (3 runs)..."
hyperfine \
  --runs 3 \
  --prepare "cd '$MACRO_DIR' && swift package clean" \
  --command-name "clean_debug_macro" \
  --export-json "$RAW/clean_debug_macro.json" \
  "(cd '$MACRO_DIR' && swift build -c debug > /dev/null && .build/debug/BenchmarkMacro)"

echo "[2/8] Clean debug — WithoutMacro (3 runs)..."
hyperfine \
  --runs 3 \
  --prepare "cd '$NOMACRO_DIR' && swift package clean" \
  --command-name "clean_debug_nomacro" \
  --export-json "$RAW/clean_debug_nomacro.json" \
  "(cd '$NOMACRO_DIR' && swift build -c debug > /dev/null && .build/debug/BenchmarkNoMacro)"

# ── Clean release ──────────────────────────────────────────────────────────────
echo "[3/8] Clean release — WithMacro (3 runs)..."
hyperfine \
  --runs 3 \
  --prepare "cd '$MACRO_DIR' && swift package clean" \
  --command-name "clean_release_macro" \
  --export-json "$RAW/clean_release_macro.json" \
  "(cd '$MACRO_DIR' && swift build -c release > /dev/null && .build/release/BenchmarkMacro)"

echo "[4/8] Clean release — WithoutMacro (3 runs)..."
hyperfine \
  --runs 3 \
  --prepare "cd '$NOMACRO_DIR' && swift package clean" \
  --command-name "clean_release_nomacro" \
  --export-json "$RAW/clean_release_nomacro.json" \
  "(cd '$NOMACRO_DIR' && swift build -c release > /dev/null && .build/release/BenchmarkNoMacro)"

# ── Warm builds for incremental ────────────────────────────────────────────────
echo "Warming debug builds for incremental tests..."
(cd "$MACRO_DIR"   && swift build -c debug   > /dev/null)
(cd "$NOMACRO_DIR" && swift build -c debug   > /dev/null)
echo "Warming release builds for incremental tests..."
(cd "$MACRO_DIR"   && swift build -c release > /dev/null)
(cd "$NOMACRO_DIR" && swift build -c release > /dev/null)

# ── Incremental debug ──────────────────────────────────────────────────────────
echo "[5/8] Incremental debug — WithMacro (5 runs)..."
hyperfine \
  --runs 5 \
  --prepare "touch '$MACRO_DIR/Sources/BenchmarkMacro/Mocks.swift'" \
  --command-name "incr_debug_macro" \
  --export-json "$RAW/incr_debug_macro.json" \
  "(cd '$MACRO_DIR' && swift build -c debug > /dev/null && .build/debug/BenchmarkMacro)"

echo "[6/8] Incremental debug — WithoutMacro (5 runs)..."
hyperfine \
  --runs 5 \
  --prepare "touch '$NOMACRO_DIR/Sources/BenchmarkNoMacro/Mocks.swift'" \
  --command-name "incr_debug_nomacro" \
  --export-json "$RAW/incr_debug_nomacro.json" \
  "(cd '$NOMACRO_DIR' && swift build -c debug > /dev/null && .build/debug/BenchmarkNoMacro)"

# ── Incremental release ────────────────────────────────────────────────────────
echo "[7/8] Incremental release — WithMacro (5 runs)..."
hyperfine \
  --runs 5 \
  --prepare "touch '$MACRO_DIR/Sources/BenchmarkMacro/Mocks.swift'" \
  --command-name "incr_release_macro" \
  --export-json "$RAW/incr_release_macro.json" \
  "(cd '$MACRO_DIR' && swift build -c release > /dev/null && .build/release/BenchmarkMacro)"

echo "[8/8] Incremental release — WithoutMacro (5 runs)..."
hyperfine \
  --runs 5 \
  --prepare "touch '$NOMACRO_DIR/Sources/BenchmarkNoMacro/Mocks.swift'" \
  --command-name "incr_release_nomacro" \
  --export-json "$RAW/incr_release_nomacro.json" \
  "(cd '$NOMACRO_DIR' && swift build -c release > /dev/null && .build/release/BenchmarkNoMacro)"

# ── Generate report ────────────────────────────────────────────────────────────
echo ""
echo "Generating $OUTPUT ..."

python3 - "$RAW" "$OUTPUT" << 'PYEOF'
import json, sys, datetime
from pathlib import Path

raw, out = Path(sys.argv[1]), Path(sys.argv[2])

def mean(key):
    f = raw / f"{key}.json"
    if not f.exists(): return None
    return json.loads(f.read_text())["results"][0]["mean"]

def fmt(s):
    if s is None: return "N/A"
    return f"{s:.3f} s" if s >= 1 else f"{s*1000:.1f} ms"

def delta(wm, wo):
    if wm is None or wo is None: return "N/A"
    d = wm - wo
    return f"+{d:.3f} s" if d >= 0 else f"{d:.3f} s"

def overhead(wm, wo):
    if wm is None or wo is None or wo == 0: return "N/A"
    pct = (wm / wo - 1) * 100
    return f"+{pct:.1f}%" if pct >= 0 else f"{pct:.1f}%"

rows = [
    ("Clean Debug",         "clean_debug_macro",   "clean_debug_nomacro"),
    ("Clean Release",       "clean_release_macro", "clean_release_nomacro"),
    ("Incremental Debug",   "incr_debug_macro",    "incr_debug_nomacro"),
    ("Incremental Release", "incr_release_macro",  "incr_release_nomacro"),
]

lines = []
lines += [
    "# TestableSpy Benchmark Results",
    "",
    f"Generated: {datetime.datetime.now():%Y-%m-%d %H:%M}",
    f"100 mock classes (async throws) · 100 assertions executed",
    "",
    "**WithMacro** = TestableSpy + @AddSpy (swift-syntax macro plugin)  ",
    "**WithoutMacro** = zero dependencies, plain hand-written spy structs",
    "",
    "## Results",
    "",
    "| Configuration       | WithMacro   | WithoutMacro | Δ          | Overhead |",
    "|---------------------|------------:|-------------:|-----------:|---------:|",
]
for label, mk, nk in rows:
    wm, wo = mean(mk), mean(nk)
    lines.append(f"| {label:<19} | {fmt(wm):>11} | {fmt(wo):>12} | {delta(wm,wo):>10} | {overhead(wm,wo):>8} |")

out.write_text("\n".join(lines) + "\n")
print(f"Written: {out}")
PYEOF

echo ""
echo "Done! Results: $OUTPUT"
