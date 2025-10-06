# FILE: Makefile
PY := python

.PHONY: demo verify clean

demo:
	$(PY) -m uvicorn src.api.main:app --port 8080 --reload &
	sleep 3
	curl -s http://127.0.0.1:8080/health || true
	pkill -f "uvicorn" || true

verify:
	$(PY) - <<'PY'
import importlib
m = importlib.import_module("src.api.main")
assert hasattr(m, "app")
print("Verify OK")
PY

clean:
	find . -type d -name "__pycache__" -prune -exec rm -rf {} +
