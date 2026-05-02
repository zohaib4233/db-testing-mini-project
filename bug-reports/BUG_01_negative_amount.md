# 🐞 BUG_01 — Negative Amount Accepted

## Severity

HIGH

---

## Description

System allows inserting negative values in order amount.

---

## Steps to Reproduce

1. Run:

```sql
INSERT INTO orders (id, user_id, product_name, amount)
VALUES (3, 1, 'Tablet', -100);
```
Expected Result

System should reject negative values

Actual Result

Record inserted successfully

Impact
Financial inconsistency
Incorrect reporting

Suggested Fix
ALTER TABLE orders
ADD CONSTRAINT chk_amount_positive CHECK (amount > 0);