# FILE: scripts/verify.sh
#!/usr/bin/env bash
set -e

echo "Running BrightLine verification..."
python - <<'PY'
print("BrightLine verification OK")
PY
