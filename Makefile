.PHONY: benchmark benchmark-generate benchmark-check

benchmark-generate:
	bash Scripts/generate_benchmarks.sh

benchmark-check: benchmark-generate
	(cd Benchmarks/WithMacro    && tuist install && tuist generate --no-open && tuist test Project)
	(cd Benchmarks/WithoutMacro && tuist generate --no-open && tuist test Project)

benchmark: benchmark-generate
	bash Scripts/benchmark.sh
