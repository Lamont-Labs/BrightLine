# FILE: docs/PROVENANCE.md
## Provenance & Reproducibility in BrightLine™

BrightLine™ generates deterministic, reproducible audit data to prove transparency.

### Core Artifacts
- `SBOM/provenance.json` → metadata for reproducible build verification  
- `SBOM/checksums.csv` → deterministic file hashes  
- `verify.sh` → local verification script  

### Process
1. Each demo run regenerates checksums.
2. Any modification produces a hash mismatch.
3. Auditors can run `bash verify.sh` to reproduce provenance logs.

### Demo Integrity Targets
- **Determinism:** identical outputs from same seed.
- **Transparency:** no hidden dependencies.
- **Proof-Over-Policing:** all checks visible and explainable.
