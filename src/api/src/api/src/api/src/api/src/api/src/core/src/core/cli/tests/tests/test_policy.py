# FILE: tests/test_policy.py
from src.api import admin

def test_policy_update():
    old = admin.POLICY.copy()
    admin.update_policy({"max_overlap_warn": 0.3})
    assert admin.POLICY["max_overlap_warn"] == 0.3
    admin.POLICY.update(old)
