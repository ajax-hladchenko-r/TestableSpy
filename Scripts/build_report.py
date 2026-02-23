import sys
import json
from datetime import datetime

paths = sys.argv[1:-1]   # 10 JSON file paths
output_file = sys.argv[-1]
generated = datetime.now().strftime("%Y-%m-%d %H:%M")


def read_mean(path):
    return json.load(open(path))["results"][0]["mean"]


(
    clean_dbg_macro,  clean_dbg_nomacro,
    clean_rel_macro,  clean_rel_nomacro,
    inc_dbg_macro,    inc_dbg_nomacro,
    inc_rel_macro,    inc_rel_nomacro,
    test_macro,       test_nomacro,
) = [read_mean(p) for p in paths]


def fmt_time(s):
    if s < 1.0:
        return f"{s*1000:.1f} ms"
    return f"{s:.3f} s"


def fmt_delta(macro, nomacro):
    d = macro - nomacro
    sign = "+" if d >= 0 else "-"
    return f"{sign}{abs(d):.3f} s"


rows = [
    ("Clean Debug",         clean_dbg_macro,  clean_dbg_nomacro),
    ("Clean Release",       clean_rel_macro,  clean_rel_nomacro),
    ("Incremental Debug",   inc_dbg_macro,    inc_dbg_nomacro),
    ("Incremental Release", inc_rel_macro,    inc_rel_nomacro),
    ("Test Execution",      test_macro,       test_nomacro),
]

lines = [
    "## TestableSpy Benchmark Results",
    "",
    f"Generated: {generated}",
    "1000 mock classes (async throws) · 1000 assertions executed",
    "",
    "**WithMacro** = TestableSpy + @AddSpy (swift-syntax macro plugin)",
    "**WithoutMacro** = zero dependencies, plain hand-written spy structs",
    "",
    "### Results",
    "",
    "| Configuration       | WithMacro   | WithoutMacro | Δ          |",
    "|---------------------|------------:|-------------:|-----------:|",
]

for name, macro, nomacro in rows:
    col1 = fmt_time(macro).rjust(11)
    col2 = fmt_time(nomacro).rjust(12)
    col3 = fmt_delta(macro, nomacro).rjust(10)
    lines.append(f"| {name:<19} | {col1} | {col2} | {col3} |")

table = "\n".join(lines) + "\n"

with open(output_file, "w") as f:
    f.write(table)

print(table)
