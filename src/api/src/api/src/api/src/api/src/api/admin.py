# FILE: src/api/admin.py
from fastapi import APIRouter, Body

router = APIRouter()

POLICY = {
    "max_overlap_warn": 0.25,
    "max_overlap_block": 0.55,
    "allow_fallback": True,
}

@router.get("/policy")
def get_policy():
    return POLICY

@router.post("/policy")
def update_policy(data: dict = Body(...)):
    POLICY.update(data)
    return {"status": "updated", "policy": POLICY}
