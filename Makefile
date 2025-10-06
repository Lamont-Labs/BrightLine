# FILE: Makefile
APP=brightline
PY?=python
PORT?=8080

.SILENT:
.ONESHELL:
SHELL := /bin/bash

.PHONY: help demo verify test lint typecheck clean

help: ## Show available targets
	grep -E '^[a-zA-Z0-9_-]+:.*?## ' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-12s\033[0m %s\n", $$1, $$2}'

demo: ## Run the BrightLine demo (start, ping /health, stop)
	echo "Starting $(APP) demo server on :$(PORT)…"
	set -e
	($(PY) -m uvicorn src.api.main:app --port $(PORT) --reload &) ; \
	SRV_PID=$$! ; \
	for i in {1..20}; do \
	  sleep 0.5 ; \
	  $(PY) - <<'PY' && break || true
import urllib.request, sys
try:
    with urllib.request.urlopen("http://127.0.0.1:$(PORT)/health", timeout=2) as r:
        ok = r.status==200
        print("Health:", r.status, r.read().decode()[:80])
        sys.exit(0 if ok else 1)
except Exception as e:
    print("Waiting for server…", e)
    sys.exit(1)
PY
	done ; \
	kill $$SRV_PID || true ; \
	wait $$SRV_PID 2>/dev/null || true
	echo "Demo completed."

verify: ## Lightweight import & route check
	$(PY) - <<'PY'
import importlib, inspect
m = importlib.import_module("src.api.main")
app = getattr(m, "app", None)
assert app is not None, "FastAPI app not found at src.api.main:app"
routes = [getattr(r, "path", str(r)) for r in getattr(app, "routes", [])]
print("Routes:", routes)
assert "/health" in routes, "Expected /health endpoint"
print("Verify OK")
PY

test: ## Placeholder test hook (extend later)
	echo "No tests yet."

lint: ## Placeholder lint hook (extend later)
	echo "No lint configured."

typecheck: ## Placeholder typecheck hook (extend later)
	echo "No typecheck configured."

clean: ## Remove caches & dist
	find . -type d -name "__pycache__" -prune -exec rm -rf {} +
	rm -rf .pytest_cache .mypy_cache dist build
	echo "Cleaned."
```0
