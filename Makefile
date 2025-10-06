# FILE: Makefile
.RECIPEPREFIX := >
PY := python

.PHONY: demo verify clean

demo:
> @echo "Starting BrightLine demo…"
> @$(PY) -c "print('BrightLine demo OK')"

verify:
> @$(PY) -c "import importlib, sys; m=importlib.import_module('src.api.main'); assert hasattr(m,'app'), 'src.api.main:app not found'; print('Verify OK')"

clean:
> @find . -type d -name '__pycache__' -prune -exec rm -rf {} +
verify:
> chmod +x scripts/verify.sh
> ./scripts/verify.sh
