#!/usr/bin/env bash
set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MACRO_SRC="$REPO/Benchmarks/WithMacro/Project/Sources/"
MACRO_TST="$REPO/Benchmarks/WithMacro/Project/Tests/"
NOMACRO_SRC="$REPO/Benchmarks/WithoutMacro/Project/Sources/"
NOMACRO_TST="$REPO/Benchmarks/WithoutMacro/Project/Tests/"
N=1000

# ── WithMacro/Mocks.swift ──────────────────────────────────────────────────────
{
	echo "import TestableSpy"
	echo ""
	for i in $(seq 0 $((N - 1))); do
		echo "public protocol BenchmarkProto_${i} { func run(value: Int) async throws -> String }"
		echo "public class BenchmarkMock_${i}: BenchmarkProto_${i} {"
		echo "    @AddSpy public func run(value: Int) async throws -> String { \"stub\" }"
		echo "    public init() {}"
		echo "}"
		echo ""
	done
} >"$MACRO_SRC/Mocks.swift"

# ── WithMacro/Main.swift ───────────────────────────────────────────────────────
{
	echo "import Foundation"
	echo "import Testing"
	echo "import Project"
	echo ""
	echo "struct BenchmarkMacro {"
	for i in $(seq 0 $((N - 1))); do
		echo "    @Test func test_${i}() async throws {"
		echo "        let m${i} = BenchmarkMock_${i}()"
		echo "        m${i}.run.return = .success(\"ok\")"
		echo "        let r${i} = try await m${i}.run(value: ${i})"
		echo "        #expect(r${i} == \"ok\")"
		echo "        #expect(m${i}.run.callCount == 1)"
		echo "    }"
	done
	echo "}"
} >"$MACRO_TST/Tests.swift"

# ── WithoutMacro/Mocks.swift ──────────────────────────────────────────────────
{
	for i in $(seq 0 $((N - 1))); do
		echo "public protocol BenchmarkProto_${i} { func run(value: Int) async throws -> String }"
		echo "public class BenchmarkMock_${i}: BenchmarkProto_${i} {"
		echo "    public private(set) var runCallCount = 0"
		echo "    public private(set) var runLastValue: Int? = nil"
		echo "    public var runReturn: String = \"stub\""
		echo "    public init() {}"
		echo "    public func run(value: Int) async throws -> String {"
		echo "        runCallCount += 1; runLastValue = value; return runReturn"
		echo "    }"
		echo "}"
		echo ""
	done
} >"$NOMACRO_SRC/Mocks.swift"

# ── WithoutMacro/Main.swift ───────────────────────────────────────────────────
{
	echo "import Foundation"
	echo "import Testing"
	echo "import Project"
	echo ""
	echo "struct BenchmarkNoMacro {"
	for i in $(seq 0 $((N - 1))); do
		echo "    @Test func test_${i}() async throws {"
		echo "        let m${i} = BenchmarkMock_${i}()"
		echo "        m${i}.runReturn = \"ok\""
		echo "        let r${i} = try await m${i}.run(value: ${i})"
		echo "        #expect(r${i} == \"ok\")"
		echo "        #expect(m${i}.runCallCount == 1)"
		echo "    }"
	done
	echo "}"
} >"$NOMACRO_TST/Tests.swift"

echo "Generated:"
echo "  $MACRO_SRC/Mocks.swift  ($(wc -l <"$MACRO_SRC/Mocks.swift") lines)"
echo "  $MACRO_SRC/Main.swift   ($(wc -l <"$MACRO_SRC/Main.swift") lines)"
echo "  $NOMACRO_SRC/Mocks.swift ($(wc -l <"$NOMACRO_SRC/Mocks.swift") lines)"
echo "  $NOMACRO_SRC/Main.swift  ($(wc -l <"$NOMACRO_SRC/Main.swift") lines)"
