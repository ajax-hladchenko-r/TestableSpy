# TestableSpy Benchmark Results

Generated: 2026-02-16 02:06
100 mock classes (async throws) · 100 assertions executed

**WithMacro** = TestableSpy + @AddSpy (swift-syntax macro plugin)  
**WithoutMacro** = zero dependencies, plain hand-written spy structs

## Results

| Configuration       | WithMacro   | WithoutMacro | Δ          | Overhead |
|---------------------|------------:|-------------:|-----------:|---------:|
| Clean Debug         |    28.120 s |     24.737 s |   +3.383 s |   +13.7% |
| Clean Release       |   146.558 s |      4.333 s | +142.225 s | +3282.6% |
| Incremental Debug   |     1.992 s |     992.4 ms |   +0.999 s |  +100.7% |
| Incremental Release |   119.029 s |      1.902 s | +117.128 s | +6159.7% |
