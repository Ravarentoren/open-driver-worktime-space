<!--
odws:
  layer: descriptive
-->


<!--
odws:
  layer: descriptive
-->


# Vacation Entitlement – Input Facts

This document defines factual input data
related to vacation entitlement in ODWS.

It records what is known,
not what is calculated.

---

## 1. Core Principle

> Vacation entitlement is derived.
> Inputs are factual.

ODWS separates:
- entitlement inputs,
- entitlement computation,
- payroll settlement.

---

## 2. Employment Context Inputs

Mandatory inputs:

- employment_start_date
- employment_end_date (if applicable)
- employment_fraction (full-time / part-time)

---

## 3. Statutory Context

Inputs MAY include:
- statutory annual vacation base
- contractually increased entitlement

These values are **inputs**, not results.

---

## 4. Vacation Usage Records

ODWS records:
- vacation taken (dates),
- vacation planned (dates),
- vacation canceled or modified.

No automatic deduction is performed at input level.

---

## 5. Correctability

Vacation inputs:
- MUST be human-correctable,
- MUST allow retroactive clarification,
- MUST preserve original entries.

---

## 6. Relationship to Absence Model

Vacation is one possible
resolution of an absence.

Absence reason and vacation usage
remain independent records.
