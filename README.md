# 📊 Database Testing Project — Users & Orders System

## 🚀 Overview
This project demonstrates **database testing concepts** using a simple Users & Orders system.

It covers:
- Data validation
- Constraint testing (PK, FK, UNIQUE)
- Negative testing
- SQL-based verification
- Bug reporting

---
## 🧩 Database Schema

### Users Table
- id (Primary Key)
- name
- email (Unique)
- age
- country

### Orders Table
- id (Primary Key)
- user_id (Foreign Key)
- product_name
- amount

---
## 🧪 Test Scenarios

| ID | Scenario | Status |
|----|---------|--------|
| TC_01 | Valid Order Creation | ✅ Pass |
| TC_02 | Order Without User | ✅ Pass |
| TC_03 | Duplicate Email | ✅ Pass |
| TC_04 | Negative Amount | ❌ Fail |
| TC_05 | Data Consistency (JOIN) | ✅ Pass |

---
## 🐞 Bug Found

### BUG_01 — Negative Amount Accepted
- Severity: High
- Issue: System allows negative order amount
- Impact: Financial inconsistency

---

## 🛠️ Suggested Fix

```sql
ALTER TABLE orders
ADD CONSTRAINT chk_amount_positive CHECK (amount > 0);
