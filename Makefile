.PHONY: benchmark benchmark-generate benchmark-check lint test validate-commit

benchmark-generate:
	bash Scripts/generate_benchmarks.sh

benchmark-check: benchmark-generate
	(cd Benchmarks/WithMacro    && tuist install && tuist generate --no-open && tuist test Project)
	(cd Benchmarks/WithoutMacro && tuist generate --no-open && tuist test Project)

benchmark: benchmark-generate
	bash Scripts/benchmark.sh

format:
	swift format format -r -i ./Sources ./Test
	swiftlint lint --fix

lint:
	swiftlint lint --strict
	swift format lint -r --strict ./Sources ./Test

test:
	swift test

validate: test lint
