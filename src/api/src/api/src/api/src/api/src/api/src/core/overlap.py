# FILE: src/core/overlap.py
import re

def check_overlap(text: str) -> float:
    words = re.findall(r"\w+", text.lower())
    if not words:
        return 0.0
    repeated = len(words) - len(set(words))
    return round(repeated / len(words), 2)
