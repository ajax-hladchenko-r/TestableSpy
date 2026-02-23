## TestableSpy Benchmark Results

Generated: 2026-02-16 18:25
1000 mock classes (async throws) · 1000 assertions executed

**WithMacro** = TestableSpy + @AddSpy (swift-syntax macro plugin)
**WithoutMacro** = zero dependencies, plain hand-written spy structs

### Results

| Configuration       | WithMacro   | WithoutMacro | Δ          |
|---------------------|------------:|-------------:|-----------:|
| Clean Debug         |    29.259 s |      7.896 s |  +21.363 s |
| Clean Release       |   159.201 s |     14.539 s | +144.662 s |
| Incremental Debug   |     2.615 s |      1.856 s |   +0.759 s |
| Incremental Release |     3.040 s |      2.003 s |   +1.037 s |
| Test Execution      |    586.3 ms |     399.2 ms |   +0.187 s |
