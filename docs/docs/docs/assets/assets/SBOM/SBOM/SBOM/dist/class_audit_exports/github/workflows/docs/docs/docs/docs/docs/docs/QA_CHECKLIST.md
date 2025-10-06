# FILE: docs/QA_CHECKLIST.md
## BrightLine QA Checklist — Demo Readiness v2.0

| Category | Test | Result |
|-----------|------|--------|
| Reproducibility | `bash verify.sh` runs clean | ✅ |
| Overlap check | `/submit/text` returns JSON with score | ✅ |
| Provenance export | `/audit/provenance` returns valid JSON | ✅ |
| Policy change | `/admin/policy` updates thresholds | ✅ |
| Metrics | `/metrics` responds with valid JSON | ✅ |
| Unit tests | `pytest` passes | ✅ |
| CI | GitHub Actions runs clean | ✅ |

### Manual Checks
- No secrets committed  
- SBOM generated  
- README, LICENSE, and docs valid Markdown  
- Demo completes under 10 minutes
