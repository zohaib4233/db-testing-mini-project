# 🧪 Test Cases — Users & Orders सिस्टम

---

## TC_01 — Valid Order Creation

**Precondition:** User exists

**Steps:**

1. Insert order with valid user_id

**Expected:** Order inserted successfully  
**Actual:** Order inserted  
**Status:** PASS ✅

---

## TC_02 — Order Without User

**Precondition:** User does not exist

**Steps:**

1. Insert order with invalid user_id

**Expected:** Should fail  
**Actual:** Error thrown  
**Status:** PASS ✅

---

## TC_03 — Duplicate Email

**Precondition:** Email already exists

**Steps:**

1. Insert duplicate email

**Expected:** Should fail  
**Actual:** Error thrown  
**Status:** PASS ✅

---

## TC_04 — Negative Amount

**Precondition:** Valid user exists

**Steps:**

1. Insert order with negative amount

**Expected:** Should fail  
**Actual:** Inserted successfully  
**Status:** FAIL ❌

---

## TC_05 — Data Consistency

**Steps:**

1. Run JOIN query

**Expected:** Correct mapping  
**Actual:** Correct  
**Status:** PASS ✅
