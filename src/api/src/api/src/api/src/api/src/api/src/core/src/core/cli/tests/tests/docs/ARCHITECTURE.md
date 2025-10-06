# FILE: docs/ARCHITECTURE.md
## BrightLine Demo Architecture
FastAPI microservice exposing endpoints for:
- `/submit/text`: text intake and overlap detection
- `/audit/provenance`: view provenance and SBOM summary
- `/metrics`: track usage counts
- `/admin/policy`: manage compliance thresholds

### Provenance Flow
Each submission → hash log → provenance record → reproducible export (future SBOM CI).
