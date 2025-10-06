# FILE: src/api/main.py
from fastapi import FastAPI
from src.api import submit, audit, metrics, admin

app = FastAPI(title="BrightLine Demo API", version="v2.0")

app.include_router(submit.router, prefix="/submit", tags=["Submit"])
app.include_router(audit.router, prefix="/audit", tags=["Audit"])
app.include_router(metrics.router, prefix="/metrics", tags=["Metrics"])
app.include_router(admin.router, prefix="/admin", tags=["Admin"])

@app.get("/")
def root():
    return {"project": "BrightLine", "status": "demo-ready"}
