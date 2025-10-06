# FILE: src/api/metrics.py
from fastapi import APIRouter

router = APIRouter()

metrics_state = {"submissions": 0, "warnings": 0}

@router.get("/")
def metrics():
    return metrics_state

@router.post("/increment")
def increment(key: str):
    if key not in metrics_state:
        return {"error": "invalid metric"}
    metrics_state[key] += 1
    return metrics_state
