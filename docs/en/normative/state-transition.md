<!--
odws:
  layer: normative
  domain: core
  topic: state-transition
  version: 1.0
  status: stable
  language: en
  license: Apache-2.0
-->

# State Transition
## Normative Definition of State Changes in ODWS

This document **normatively defines state transitions**
within the Open Driver Worktime Space (ODWS).

Its purpose is to:
- define how reality changes over time,
- prohibit implicit or automatic state changes,
- establish a deterministic foundation for timeline construction.

This document is **normative**.

It applies in conjunction with:
- *ODWS Documentation Layers*
- *ODWS-CE Core – Normative Definition*
- *Identity of the Event*
- *Identity of Time and Working Time*
- *Identity of the Driver*
- *ODWS Terminology Boundary*

---

## 1. Definition of State

Normatively:

- a **state** is a real condition of the driver
- only two states exist:
  - **work**
  - **rest**
- at any real point in time, **exactly one state exists**

State is a **property of reality**, not of devices or systems.

---

## 2. Definition of State Transition

Normatively:

- a **state transition** is the moment when the real state changes
- a transition is an **event**
- a transition occurs at a specific point in time

A state transition:
- does not span time,
- does not describe duration,
- only marks change.

---

## 3. No Implicit State Transitions

The following are **normatively prohibited**:

- automatic state changes
- default state assumptions
- transitions inferred from:
  - engine shutdown or startup
  - vehicle movement or standstill
  - tachograph configuration
  - absence of records
  - technical defaults

**If no transition event exists, the state did not change.**

---

## 4. State Continuity Rule

Normatively:

- between two transitions, the state **remains unchanged**
- state continuity is mandatory
- no gaps or undefined states are permitted

Reality is **continuous**.

---

## 5. Transitions Are Derived, Not Assumed

Normatively:

- transitions are **derived from events**
- events are **derived from records**
- no layer may bypass this order

The core:
- MUST NOT invent transitions
- MUST NOT guess state changes
- MUST remain conservative

---

## 6. Conflicting Signals and Records

Normatively:

- multiple records MAY suggest different transitions
- conflicts do not invalidate reality

The core MUST:
- preserve all records,
- derive transitions deterministically,
- allow auditability of decisions,
- never discard contradictory inputs.

---

## 7. Transition ≠ Legal or Compliance Meaning

Normatively:

- a state transition does not imply:
  - legal break,
  - compliance or violation,
  - payroll eligibility,
  - entitlement or sanction

All such meaning belongs to **interpretative layers**.

---

## 8. Relation to Events and Timeline

Normatively:

- events define transitions
- transitions define state changes
- states define the continuous timeline

Allowed flow:

records → events → state transitions → timeline

Any other flow is **invalid in ODWS**.

---

## 9. Normative Summary

In ODWS:

- state transitions are explicit events
- no automatic or implicit transitions exist
- state continuity is mandatory
- devices do not change reality
- interpretation begins after the timeline

If a system assumes a transition without an event,
**the system is wrong**.
