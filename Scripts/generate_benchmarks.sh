#!/usr/bin/env bash
set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MACRO_SRC="$REPO/Benchmarks/WithMacro/Sources/BenchmarkMacro"
NOMACRO_SRC="$REPO/Benchmarks/WithoutMacro/Sources/BenchmarkNoMacro"

# ── WithMacro/Mocks.swift ──────────────────────────────────────────────────────
{
  echo "import TestableSpy"
  echo ""
  for i in $(seq 0 99); do
    echo "protocol BenchmarkProto_${i} { func run(value: Int) async throws -> String }"
    echo "class BenchmarkMock_${i}: BenchmarkProto_${i} {"
    echo "    @AddSpy func run(value: Int) async throws -> String { \"stub\" }"
    echo "}"
    echo ""
  done
} > "$MACRO_SRC/Mocks.swift"

# ── WithMacro/Main.swift ───────────────────────────────────────────────────────
{
  echo "import Foundation"
  echo ""
  echo "@main struct BenchmarkMacro {"
  echo "    static func main() async throws {"
  for i in $(seq 0 99); do
    echo "        let m${i} = BenchmarkMock_${i}()"
    echo "        m${i}.run.return = .success(\"ok\")"
    echo "        let r${i} = try await m${i}.run(value: ${i})"
    echo "        assert(r${i} == \"ok\")"
    echo "        assert(m${i}.run.callCount == 1)"
  done
  echo "        print(\"OK: 100 WithMacro assertions passed\")"
  echo "    }"
  echo "}"
} > "$MACRO_SRC/Main.swift"

# ── WithoutMacro/Mocks.swift ──────────────────────────────────────────────────
{
  for i in $(seq 0 99); do
    echo "protocol BenchmarkProto_${i} { func run(value: Int) async throws -> String }"
    echo "class BenchmarkMock_${i}: BenchmarkProto_${i} {"
    echo "    private(set) var runCallCount = 0"
    echo "    private(set) var runLastValue: Int? = nil"
    echo "    var runReturn: String = \"stub\""
    echo "    func run(value: Int) async throws -> String {"
    echo "        runCallCount += 1; runLastValue = value; return runReturn"
    echo "    }"
    echo "}"
    echo ""
  done
} > "$NOMACRO_SRC/Mocks.swift"

# ── WithoutMacro/Main.swift ───────────────────────────────────────────────────
{
  echo "import Foundation"
  echo ""
  echo "@main struct BenchmarkNoMacro {"
  echo "    static func main() async throws {"
  for i in $(seq 0 99); do
    echo "        let m${i} = BenchmarkMock_${i}()"
    echo "        m${i}.runReturn = \"ok\""
    echo "        let r${i} = try await m${i}.run(value: ${i})"
    echo "        assert(r${i} == \"ok\")"
    echo "        assert(m${i}.runCallCount == 1)"
  done
  echo "        print(\"OK: 100 WithoutMacro assertions passed\")"
  echo "    }"
  echo "}"
} > "$NOMACRO_SRC/Main.swift"

echo "Generated:"
echo "  $MACRO_SRC/Mocks.swift  ($(wc -l < "$MACRO_SRC/Mocks.swift") lines)"
echo "  $MACRO_SRC/Main.swift   ($(wc -l < "$MACRO_SRC/Main.swift") lines)"
echo "  $NOMACRO_SRC/Mocks.swift ($(wc -l < "$NOMACRO_SRC/Mocks.swift") lines)"
echo "  $NOMACRO_SRC/Main.swift  ($(wc -l < "$NOMACRO_SRC/Main.swift") lines)"
