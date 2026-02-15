# TestableSpy Benchmark Results

Generated: 2026-02-15 19:22
100 mock classes (async throws) · 100 assertions executed

**WithMacro** = TestableSpy + @AddSpy (swift-syntax macro plugin)  
**WithoutMacro** = zero dependencies, plain hand-written spy structs

## Results

| Configuration       | WithMacro   | WithoutMacro | Δ          | Overhead |
|---------------------|------------:|-------------:|-----------:|---------:|
| Clean Debug         |    24.449 s |     19.909 s |   +4.540 s |   +22.8% |
| Clean Release       |   139.109 s |      4.131 s | +134.978 s | +3267.8% |
| Incremental Debug   |     2.141 s |     951.4 ms |   +1.189 s |  +125.0% |
| Incremental Release |   115.264 s |      1.737 s | +113.527 s | +6536.0% |
