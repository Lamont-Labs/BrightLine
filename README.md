# BrightLine™ — Education AI Compliance Assistant  
**Version:** v2.0 | **Owner:** Jesse J. Lamont | **Org:** Lamont-Labs  
**Date:** 2025-10-05 | **Status:** Demo-ready (CI-green build seed)

---

### 🎯 Mission  
BrightLine™ builds **trust between students and institutions** by proving originality, not policing it.  
The system provides verifiable provenance, overlap guidance, and compliance-safe audit logs — so schools can embrace AI writing responsibly.

---

### 🧱 What This Repo Includes  
- `/src/api/` — FastAPI demo endpoints (submit, audit, metrics, policy)  
- `/src/core/` — Overlap checker + citation suggester (deterministic stubs)  
- `/tests/` — Policy and threshold validation tests  
- `/docs/` — Architecture, Quickstart, Investor, Limitations, Security  
- `/SBOM/` — CycloneDX SBOM, provenance.json, checksums.csv  
- `.github/workflows/ci.yml` — Verified working CI/CD workflow  
- `Makefile`, `verify.sh`, `requirements.txt`, and `LICENSE`  
- `README.md`, `DEMO_SCRIPT.md`, `RUNBOOK.md`, `SECURITY.md`, `QA_CHECKLIST.md`, etc. (handoff documentation)

---

### 🧩 What’s Not Included (Yet)  
- No live integrations (LMS adapters stubbed)  
- No production PII handling (demo only, synthetic data)  
- No grading logic or plagiarism scoring (guidance-only mode)  
- UI is mock/stub only — see `/assets/ui_mocks.txt`  
- Full compliance certifications pending (FERPA, GDPR)

---

### 🚀 Quickstart (Local Demo ≤10 min)
```bash
python3 -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
make demo
bash verify.sh
