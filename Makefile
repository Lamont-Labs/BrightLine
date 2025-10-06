# FILE: Makefile
# No tabs needed — we change the recipe prefix to '>'
.RECIPEPREFIX := >
PY := python

.PHONY: demo verify clean

demo:
> @echo "Starting BrightLine demo…"
> $(PY) - <<'PY'
> print("BrightLine demo OK")
> PY

verify:
> $(PY) - <<'PY'
> import importlib, sys
> try:
>     m = importlib.import_module("src.api.main")
>     assert hasattr(m, "app"), "src.api.main:app not found"
>     print("Verify OK")
> except Exception as e:
>     print("Verify failed:", e); sys.exit(1)
> PY

clean:
> find . -type d -name "__pycache__" -prune -exec rm -rf {} +
