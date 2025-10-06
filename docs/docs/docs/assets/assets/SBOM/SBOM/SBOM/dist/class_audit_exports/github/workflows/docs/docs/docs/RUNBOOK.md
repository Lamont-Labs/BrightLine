---

**FILE 30 — docs/RUNBOOK.md**  
```markdown
# FILE: docs/RUNBOOK.md
## BrightLine™ Runbook — Demo Operations

### Roles
- **Owner:** Jesse J. Lamont  
- **Maintainer:** Lamont-Labs  
- **Demo Engineer:** prepares CI and local runs.

### Build Steps
1. Create Python virtual environment.
2. Install dependencies (`pip install -r requirements.txt`).
3. Launch server (`make demo`).
4. Verify reproducibility (`bash verify.sh`).
5. Review artifacts in `/SBOM` and `/dist`.

### Deployment Targets
- Local demo only (no cloud resources).  
- Container-ready: optional Docker build in roadmap.

### Rollback
- To reset to clean demo: `git checkout -- . && git clean -fdx`
- Verify checksum file matches expected entries.

### Monitoring
- CI pipeline runs `pytest` + `verify.sh`.
- Metrics endpoint `/metrics` displays usage stats.

### Support
- Contact: `lamontlabs@proton.me`
