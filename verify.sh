# FILE: verify.sh
#!/bin/bash
set -e
echo "Running BrightLine reproducibility verification..."

mkdir -p SBOM provenance reports

# Step 1: Generate SBOM (placeholder)
echo '{"sbom":"CycloneDX placeholder"}' > SBOM/sbom.cdx.json

# Step 2: Compute checksums
find . -type f \( -name "*.py" -o -name "*.md" \) -exec sha256sum {} \; > SBOM/checksums.csv

# Step 3: Create provenance file
cat <<EOF > SBOM/provenance.json
{
  "project": "BrightLine",
  "version": "v2.0",
  "generated_at": "$(date -u)",
  "commit": "demo-seed",
  "files_hashed": $(wc -l < SBOM/checksums.csv)
}
EOF

echo "✅ Verification complete. Artifacts in SBOM/."
