# FILE: src/api/audit.py
from fastapi import APIRouter
import json, hashlib, os

router = APIRouter()

@router.get("/provenance")
def get_provenance():
    if not os.path.exists("SBOM/provenance.json"):
        return {"error": "no provenance file"}
    with open("SBOM/provenance.json") as f:
        data = json.load(f)
    data["hash"] = hashlib.sha256(json.dumps(data).encode()).hexdigest()
    return data
