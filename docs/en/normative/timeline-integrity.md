<!--
odws:
  layer: normative
  domain: core
  topic: timeline-integrity
  version: 1.0
  status: stable
  language: en
  license: Apache-2.0
-->

# Timeline Integrity
## Normative Definition of Timeline Consistency in ODWS

This document **normatively defines the integrity rules of the timeline**
within the Open Driver Worktime Space (ODWS).

Its purpose is to:
- protect the timeline from fragmentation, gaps, and overlaps,
- ensure continuity of reality representation,
- establish non-negotiable invariants for all downstream computation.

This document is **normative**.

It applies in conjunction with:
- *ODWS Documentation Layers*
- *ODWS-CE Core – Normative Definition*
- *Identity of Time and Working Time*
- *Identity of the Event*
- *State Transition*

---

## 1. Single Timeline Principle

Normatively:

- there exists **exactly one timeline** per driver
- the timeline represents **continuous reality**
- the timeline is **never suspended or reset**

There are no parallel timelines,
no alternative branches,
no hidden timelines.

---

## 2. Continuity Requirement

Normatively:

- the timeline MUST be continuous
- no gaps are permitted
- no undefined intervals are permitted

If reality exists,
**it exists on the timeline**.

---

## 3. No Temporal Overlaps

Normatively:

- overlapping time intervals are **prohibited**
- a driver cannot occupy two states at the same time
- a driver cannot have parallel events

If two records suggest overlap,
the conflict is resolved at the **record level**,
not by splitting the timeline.

---

## 4. No Time Removal

The following are **normatively prohibited**:

- deletion of time intervals
- ignoring inconvenient periods
- collapsing time due to interpretation
- removing breaks, waiting, or transitions

Time that existed **must remain represented**.

---

## 5. No Time Duplication

Normatively:

- time MUST NOT be duplicated
- the same moment MUST NOT appear twice
- aggregation MUST NOT create additional time

Interpretation may count time,
but MUST NOT multiply it.

---

## 6. Timeline Independence from Interpretation

Normatively:

- the timeline is built **before interpretation**
- legal, payroll, or compliance logic:
  - reads the timeline,
  - does not modify it

No downstream layer:
- may change timeline structure,
- may insert or remove time,
- may reinterpret continuity.

---

## 7. Corrections Preserve Timeline Integrity

Normatively:

- corrections add information
- corrections MUST NOT break continuity
- corrections MUST NOT alter past existence of time

Reality is corrected by **addition**, not erasure.

---

## 8. Deterministic Construction Rule

For identical input records:

- the timeline MUST be identical
- ordering MUST be reproducible
- integrity rules MUST always hold

Timeline integrity is **deterministic**, not heuristic.

---

## 9. Relation to ODWS-CE Core

The ODWS-CE core:

- constructs the timeline from events,
- enforces all integrity rules,
- rejects outputs violating continuity,
- provides a stable substrate for all computation.

If integrity cannot be preserved,
**the core MUST fail explicitly**.

---

## 10. Normative Summary

In ODWS:

- the timeline is singular and continuous
- time cannot overlap, disappear, or multiply
- integrity precedes interpretation
- corrections do not rewrite reality

If a computation requires breaking the timeline,
**the computation is invalid**.
