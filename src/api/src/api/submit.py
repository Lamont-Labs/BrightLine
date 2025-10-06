# FILE: src/api/submit.py
from fastapi import APIRouter, Form
from src.core.overlap import check_overlap
from src.core.citation import suggest_citations

router = APIRouter()

@router.post("/text")
async def submit_text(text: str = Form(...)):
    overlap_score = check_overlap(text)
    citations = suggest_citations(text)
    guidance = "OK"
    if overlap_score > 0.4:
        guidance = "Review and cite sources."
    return {
        "overlap_score": overlap_score,
        "citations": citations,
        "guidance": guidance,
    }
