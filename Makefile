.PHONY: benchmark benchmark-generate benchmark-check

benchmark-generate:
	bash Scripts/generate_benchmarks.sh

benchmark-check: benchmark-generate
	(cd Benchmarks/WithMacro    && swift run)
	(cd Benchmarks/WithoutMacro && swift run)

benchmark: benchmark-generate
	bash Scripts/benchmark.sh
