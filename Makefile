# FILE: Makefile
.PHONY: demo verify test

demo:
	@echo "Starting BrightLine demo server..."
	uvicorn src.api.main:app --reload --port 8080

verify:
	bash verify.sh

test:
	pytest -q --tb=short
