<!--
odws:
  layer: descriptive
  domain: worktime
  topic: absence-and-non-availability
  version: 1.0
  status: stable
  language: en
  license: Apache-2.0
-->





# Absence and Non-Availability Recording

This document defines how absences and non-availability are represented
within the Open Driver Worktime Space (ODWS).

Its purpose is to record reality truthfully while keeping
compensation, legal qualification, and employer decisions strictly separate.

ODWS does not judge.
ODWS records and explains.

---

## 1. Core Principle

> Absence from work is a fact.
> The reason for absence is a fact.
> The payroll treatment of absence is a separate decision.

ODWS records facts first.
Interpretation and settlement come later.

---

## 2. Absence vs. Worktime

An absence means that the driver was not performing work.

It does NOT automatically imply:
- vacation,
- unpaid leave,
- sickness,
- fault,
- compliance or non-compliance.

Absence exists independently of its payroll or legal resolution.

---

## 3. Two Independent Dimensions

ODWS distinguishes two independent dimensions:

### 3.1 Operational Reality (Driver Perspective)

This answers the question:

> "Why was I not working?"

It is expressed as a **reason for absence**.

Allowed values are intentionally limited:

- HEALTH
- FAMILY
- PERSONAL
- OTHER

These values describe reality only.
They are not legal categories.

---

### 3.2 Payroll Resolution (Employer Perspective)

This answers the question:

> "How was this absence resolved for compensation purposes?"

Allowed values:

- VACATION
- COMPENSATORY TIME OFF
- PAID OBSTACLE
- UNPAID LEAVE
- UNRESOLVED

This information:
- does not change recorded reality,
- does not override worktime computation,
- may change over time.

---

## 4. Temporal Scope of Absence

Absence is recorded using calendar dates only.

- start date
- end date

Time-of-day precision is intentionally excluded.

This aligns with:
- tachograph manual rest entries,
- real-world reporting practices,
- auditability.

---

## 5. Compensatory Time and Equivalents

If an absence is resolved through compensatory time
or another time-based equivalent,
the time interval MAY be recorded separately.

This interval:
- represents settlement,
- not absence itself,
- does not modify the original absence record.

---

## 6. Relationship to ES561 and AETR

From a regulatory perspective:

- any absence requires a manual rest record under ES561,
- absence recording does not imply worktime interruption legality,
- ODWS does not enforce regulatory compliance.

Regulatory assessment is always external to the core model.

---

## 7. Protection Against Misclassification

ODWS explicitly prevents automatic assumptions such as:

- absence == vacation
- absence == unpaid
- absence == fault of the driver

Any mismatch between:
- recorded absence reason,
- and payroll resolution

remains visible and auditable.

---

## 8. Purpose Limitation

This model exists to:
- protect drivers from silent reclassification,
- protect employers through transparency,
- preserve trust through explicit recording.

ODWS records what happened.
Humans decide what it means.

---

Compensatory time off MUST NOT be used
as a substitute for statutory vacation.

Vacation is always a paid entitlement.
Compensatory time off exists only
as compensation for performed work.
