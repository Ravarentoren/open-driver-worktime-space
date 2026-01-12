<!--
odws:
  layer: normative
  domain: core
  topic: event-ordering-and-equal-timestamps
  version: 1.0
  status: stable
  language: en
  license: Apache-2.0
-->

# Event Ordering and Equal Timestamps
## Normative Definition of Deterministic Ordering in ODWS

This document **normatively defines how events are ordered**
within the Open Driver Worktime Space (ODWS),
including situations where multiple events share the same timestamp.

Its purpose is to:
- guarantee deterministic and reproducible timelines,
- prevent ambiguity caused by equal or conflicting timestamps,
- define strict ordering rules independent of record arrival order.

This document is **normative**.

It applies in conjunction with:
- *ODWS Documentation Layers*
- *ODWS-CE Core – Normative Definition*
- *Identity of the Event*
- *State Transition*
- *Timeline Integrity*
- *Identity of the Record*

---

## 1. Ordering Is Mandatory

Normatively:

- every event MUST have a defined position on the timeline
- no two events may be unordered
- ordering is a property of the **timeline**, not of records

If ordering is undefined,
**the timeline is invalid**.

---

## 2. Timestamp as Primary Ordering Key

Normatively:

- event timestamps are the **primary ordering key**
- earlier timestamp → earlier position on the timeline

However:

- timestamps alone are **not sufficient** to guarantee determinism

---

## 3. Equal Timestamps Are Allowed

Normatively:

- multiple events MAY share the same timestamp
- equal timestamps do **not** imply simultaneity of meaning
- equal timestamps do **not** merge events

Each event remains:
- atomic,
- distinct,
- independently ordered.

---

## 4. Secondary Deterministic Ordering Rules

If two or more events share the same timestamp,
the ODWS-CE core MUST apply deterministic disambiguation rules.

Ordering is normatively determined in the following fixed sequence:

1. **Priority of Explicit State Transitions**

   - the **first transition from rest → work**
     has priority over continuation of the previous state

   - the **last transition from work → rest**
     has priority over continuation of the previous state

   An explicit state transition always has priority
   over implicit state continuity.

---

2. **Priority of Event Type**

   - state transition events
     have priority over all other event types

   State transitions define the structure of the timeline
   and MUST NOT be suppressed by other events.

---

3. **Source Certainty**

   - events derived from **explicit records**
     have priority over:
       - derived events,
       - corrective or reconstructive events

   A more certain source has priority over a less certain one,
   not by authority,
   but by proximity to reality.

---

4. **Stable Internal Ordering Key**

   - a deterministic and reproducible internal identifier
   - independent of input record order
   - identical for identical inputs

   This key SHALL be used only
   if all previous rules fail to determine ordering.

---

## 5. Record Arrival Order Is Irrelevant

Normatively:

- the order in which records are received
  MUST NOT affect event ordering
- late or delayed records
  MUST be inserted deterministically

The timeline is rebuilt from facts,
not appended heuristically.

---

## 6. No Implicit Merging of Events

Normatively prohibited:

- merging events due to equal timestamps
- collapsing multiple changes into one
- assuming simultaneity implies identity

If two changes occurred,
**two events MUST exist**.

---

## 7. Conflicting Timestamp Scenarios

Normatively:

- conflicts in timestamps MAY exist
- conflicting timestamps do not invalidate events

The core MUST:
- preserve all events,
- order them deterministically,
- expose conflicts for audit,
- never discard events due to ambiguity.

---

## 8. Determinism Requirement

For identical input records:

- event ordering MUST be identical
- timeline structure MUST be identical
- equal timestamps MUST resolve identically

Any non-deterministic ordering
**violates ODWS core principles**.

---

## 9. Relation to Timeline Integrity

Normatively:

- ordering rules are part of timeline integrity
- incorrect ordering equals integrity violation

If ordering cannot be resolved deterministically,
**the core MUST fail explicitly**.

---

## 10. Normative Summary

In ODWS:

- every event has a defined order
- equal timestamps are allowed but never ambiguous
- ordering is deterministic and reproducible
- record arrival order is irrelevant
- ambiguity is exposed, not hidden

If two implementations produce different ordering
from the same input,
**at least one of them is wrong**.
