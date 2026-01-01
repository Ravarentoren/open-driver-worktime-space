# Employment Termination – Deterministic Computation

This document defines how the **termination date**
of an employment relationship is deterministically computed in ODWS.

It operates exclusively on recorded input facts.

---

## 1. Core Principle

> The termination date is never an input.
> It is always a computed result.

Any system that allows manual entry
of the termination date without computation
is incompatible with ODWS.

---

## 2. Deterministic Nature

Termination computation MUST be:

- deterministic,
- reproducible,
- explainable step by step,
- independent of payroll systems.

Given the same inputs,
the result MUST always be identical.

---

## 3. General Computation Flow

1. Read termination input facts
2. Identify applicable termination regime
3. Determine notice applicability
4. Determine notice period start
5. Apply duration rules
6. Produce termination date
7. Record all steps in DTL

---

## 4. Regime-Specific Rules

### 4.1 Probation Termination

If:
- `termination_event_type = PROBATION_TERMINATION`
- and `probation_active = true`

Then:
- termination date = termination_event_date

---

### 4.2 Mutual Agreement

If:
- `termination_event_type = MUTUAL_AGREEMENT`
- and `explicit_end_date` is provided

Then:
- termination date = explicit_end_date

---

### 4.3 Notice-Based Termination

If:
- termination occurs by notice,
- and no explicit end date is provided,

Then:

1. notice period begins on the first day
   of the calendar month following event date
2. notice period length is determined
   by statutory or overridden duration
3. termination date is the last day
   of the final notice period month

---

## 5. Output Structure

Computed output includes:

- `computed_termination_date`
- `computation_method`
- `confidence`
- `notes`

---

## 6. Corrections and Recomputations

If any input fact changes:
- computation MUST be rerun,
- previous results remain auditable,
- new results are logged.

---

## 7. Relationship to Compensation

Termination computation:
- determines employment duration,
- determines eligibility periods,
- does NOT compute money.

Compensation remains a separate concern.

---

## 8. Deterministic Trace Log Integration

Each computation step MUST produce
a corresponding DTL entry.

Nothing happens silently.
