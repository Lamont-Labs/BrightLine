# FILE: src/core/citation.py
import re

def suggest_citations(text: str):
    urls = re.findall(r"http[s]?://\S+", text)
    if not urls:
        return ["Consider adding scholarly or credible sources."]
    return [f"Ensure source credibility: {u}" for u in urls]
