# BrightLine™ — Education AI Compliance Assistant  
**Version:** v2.0 | **Owner:** Jesse J. Lamont | **Org:** Lamont-Labs  
**Date:** 2025-10-05 | **Status:** Demo-Ready (CI-Green Build Seed)

---

### 🎯 Mission  
BrightLine™ helps **students, teachers, and institutions manage AI-assisted writing responsibly.**  
It proves originality with transparent provenance and audit logs — focusing on **proof over policing**.

---

### 🧱 What This Repo Includes  
- `/src/api/` — FastAPI demo endpoints (submit / audit / metrics / policy)  
- `/src/core/` — Deterministic overlap checker + citation suggester  
- `/tests/` — Policy + threshold validation tests  
- `/docs/` — Architecture · Quickstart · Investor · Limitations · Security  
- `/SBOM/` — CycloneDX SBOM · provenance.json · checksums.csv  
- `.github/workflows/ci.yml` — Fully working GitHub Actions pipeline  
- `Makefile`, `verify.sh`, `requirements.txt`, `LICENSE`  
- Binder-compliant docs: `README.md`, `DEMO_SCRIPT.md`, `RUNBOOK.md`, `SECURITY.md`, `QA_CHECKLIST.md`

---

### 🧩 What’s Not Included Yet  
- ❌ Live LMS integrations (Canvas / Google Classroom stubs only)  
- ❌ Production PII handling (demo uses synthetic data only)  
- ❌ Grading logic or plagiarism scoring (guidance-only mode)  
- ❌ UI prototype (stub → see `/assets/ui_mocks.txt`)  
- ⏳ Compliance certifications ( FERPA / GDPR ) pending

---

### 🚀 Quickstart (Local Demo ≤ 10 min)
```bash
python3 -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
make demo
bash verify.sh
