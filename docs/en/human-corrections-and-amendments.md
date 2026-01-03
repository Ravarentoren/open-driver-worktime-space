<!--
odws:
  layer: descriptive
-->


# Human Corrections and Amendments

This document defines the role of human correction
within the Open Driver Worktime Space (ODWS).

It establishes that delayed recognition of facts
is a normal property of real-world work
and MUST be supported by the system.

ODWS does not assume perfection.
ODWS assumes reality.

---

## 1. Core Principle

> Delayed recognition is not an error —  
> it is a property of reality.

Some facts about work can only be correctly identified
after they have already occurred.

Any system that requires immediate correctness
cannot faithfully represent real-world work.

---

## 2. Mandatory Correctability

Any input relevant to worktime computation MUST be:

- correctable by human action,
- correctable without technical barriers,
- correctable without penalty.

A system that does not allow human correction
MUST NOT claim ODWS compatibility.

---

## 3. Nature of a Correction

A correction:

- does NOT overwrite the original record,
- represents an additional factual statement,
- exists alongside the original data.

Corrections are **new facts about past events**,
not manipulation of history.

---

## 4. Separation of Concerns

ODWS strictly separates:

1. original recorded data (device or input),
2. human correction or clarification,
3. deterministic computation,
4. interpretation or decision-making.

Each layer remains independently auditable.

---

## 5. Deterministic Impact

Any correction MUST:

- be explicitly recorded,
- participate in deterministic recomputation,
- be reflected in the Deterministic Trace Log (DTL).

Silent correction or hidden normalization is prohibited.

---

## 6. Relationship to Tachograph Data

Tachograph records:

- capture device state,
- do not capture intent,
- do not capture context,
- cannot be corrected retroactively.

ODWS exists to compensate for these limitations
without falsifying or deleting device data.

---

## 7. Protection Against Disputes

Human correction capability exists to:

- prevent forced disputes over obvious reality,
- avoid retroactive blame,
- preserve trust between drivers and employers.

ODWS records what happened.
Humans explain why.
Computation explains how.

---

## 8. Normative Requirement

Any ODWS-compatible system MUST:

- allow human correction,
- preserve original data,
- record amendments explicitly,
- recompute results deterministically.

A system that treats uncorrectable input
as authoritative truth
is incompatible with ODWS.
