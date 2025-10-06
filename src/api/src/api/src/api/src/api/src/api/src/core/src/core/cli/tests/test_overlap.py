# FILE: tests/test_overlap.py
from src.core.overlap import check_overlap

def test_overlap_low():
    assert check_overlap("unique sentence example") == 0.0

def test_overlap_high():
    t = "repeat repeat repeat"
    assert check_overlap(t) > 0.5
