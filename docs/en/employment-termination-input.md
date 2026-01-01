# Employment Termination – Input Facts

This document defines the **input facts** related to the termination
of an employment relationship within the Open Driver Worktime Space (ODWS).

It describes **what happened**, not what it means legally or financially.

ODWS records reality first.
Computation and interpretation follow.

---

## 1. Core Principle

> The end of employment is not a single fact.
> It is the result of factual events interpreted through rules.

Therefore, ODWS separates:
- termination **inputs** (facts),
- termination **computation** (derived result).

---

## 2. Nature of Input Data

Termination input data represents **observable events** such as:
- delivery of notice,
- signature of an agreement,
- existence of probation,
- explicitly agreed end dates.

Input data:
- MUST be human-entered or human-confirmed,
- MUST be correctable,
- MUST NOT contain computed results.

---

## 3. Mandatory Input Fields

### 3.1 Employment Start

- `employment_start_date`
  - calendar date
  - factual start of employment

---

### 3.2 Termination Event Type

- `termination_event_type`

Allowed values:

- NOTICE_BY_EMPLOYEE
- NOTICE_BY_EMPLOYER
- MUTUAL_AGREEMENT
- IMMEDIATE_TERMINATION
- PROBATION_TERMINATION

This field describes **what kind of event occurred**, not its outcome.

---

### 3.3 Event Date

- `termination_event_date`

This is the date when:
- notice was delivered,
- agreement was signed,
- termination was communicated.

It is **not** the end of employment date.

---

### 3.4 Probation Context

- `probation_active` (true / false)

Represents whether probation was in effect
at the time of the termination event.

---

### 3.5 Explicit End Date (Optional)

- `explicit_end_date` (optional)

Used only when:
- the end date was explicitly agreed by both parties,
- or directly stated in a legal act.

This field MUST NOT be filled
if the end date is subject to computation.

---

### 3.6 Notice Period Override (Optional)

- `notice_period_months` (optional)

Allows recording of:
- contractually modified notice periods,
- legally specific durations.

Absence of this field implies default statutory rules.

---

## 4. What Is Explicitly NOT an Input

The following MUST NOT be entered as input:

- computed termination date,
- remaining vacation days,
- compensation amount,
- payroll settlement results.

These are derived values.

---

## 5. Correctability

Termination input facts MUST be correctable.

Corrections:
- do not overwrite original input,
- are recorded as additional factual statements,
- participate in deterministic recomputation.

---

## 6. Relationship to Other ODWS Models

This input model:
- feeds termination computation,
- integrates with absence and vacation models,
- participates in the Deterministic Trace Log (DTL).

ODWS records what happened.
Computation explains what follows.
