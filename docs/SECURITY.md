# FILE: docs/SECURITY.md
## BrightLine™ Security Baseline — Demo v2.0

### Data Handling
- Local-only data; no student PII.  
- No telemetry or analytics.

### Provenance
- SHA-256 checksums computed on every run.  
- Reproducibility verified via `verify.sh`.

### Dependencies
- All Python dependencies pinned.  
- CycloneDX SBOM included.

### Threat Model
- Demo assumes trusted environment.  
- Future: Ed25519 signing for exports.

### Gaps
- No encryption-at-rest.  
- No auth or multi-user separation.
