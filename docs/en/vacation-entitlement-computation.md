# Vacation Entitlement – Deterministic Computation

This document defines how vacation entitlement
is computed deterministically in ODWS.

---

## 1. Core Principle

> Vacation entitlement is never entered manually.
> It is always computed.

---

## 2. Inputs

Computation operates on:
- employment duration
- statutory rules
- contract overrides
- recorded vacation usage

---

## 3. Deterministic Rules

Computation MUST:
- be reproducible,
- be explainable,
- produce identical results for identical inputs.

---

## 4. Partial Employment Periods

ODWS MUST support:
- employment starting mid-year,
- employment ending mid-year,
- proportional entitlement calculation.

---

## 5. Output

Computed output includes:
- total entitlement
- used entitlement
- remaining entitlement
- computation explanation

---

## 6. DTL Integration

Each computation step
MUST be recorded in the Deterministic Trace Log.
