<!--
odws:
  layer: normative
  domain: core
  topic: conflict-resolution-model
  version: 1.0
  status: stable
  language: en
  license: Apache-2.0
-->

# Conflict Resolution Model
## Normative Definition of Conflict Handling in ODWS

This document **normatively defines how conflicts are identified and resolved**
within the Open Driver Worktime Space (ODWS).

Its purpose is to:
- define what a conflict **is** and **is not**
- prohibit implicit or heuristic resolution
- establish deterministic, traceable conflict handling rules

This document is **normative**.

It applies in conjunction with:
- *ODWS Documentation Layers*
- *ODWS-CE Core – Normative Definition*
- *Identity of the Record*
- *Identity of the Event*
- *State Transition*
- *Event Ordering and Equal Timestamps*
- *Timeline Integrity*
- *Trace Log and Deterministic Audit Trail*

---

## 1. Definition of a Conflict

Normatively:

A **conflict** exists when:
- two or more records
- refer to the same time interval
- and assert **incompatible claims about reality**

Typical examples include:
- work vs. rest at the same time
- multiple state transitions at the same timestamp
- overlapping events violating timeline continuity

A conflict is a **property of input information**,
not a failure of reality.

---

## 2. What Is Not a Conflict

Normatively:

The following are **not conflicts**:
- missing records
- delayed records
- manual records
- records without device access
- records outside a vehicle

Absence or delay of recording **does not create a conflict**.

---

## 3. Prohibition of Implicit Conflict Resolution

The following are **normatively prohibited**:

- silent overwriting of records
- automatic preference of any device
- heuristic or probabilistic guessing
- deletion of conflicting inputs

**Every conflict MUST be resolved explicitly.**

---

## 4. Core Principles of Conflict Resolution

Conflict resolution MUST:

1. preserve all input records  
2. be deterministic  
3. be fully traceable  
4. be reproducible  
5. be auditable via the trace log  

---

## 5. Permitted Conflict Resolution Methods

Only the following methods are permitted:

### 5.1 Event Derivation Without Input Loss

- all conflicting records remain preserved
- the core derives a conservative set of events
- no record is suppressed

### 5.2 Resolution at Event Level, Not Record Level

- conflicts are resolved during event derivation
- records are never modified or removed

### 5.3 Explicit Rule-Based Resolution

Only rules defined in the following documents may be applied:
- *Event Ordering and Equal Timestamps*
- *State Transition*
- *Timeline Integrity*

No other rules are allowed.

---

## 6. Conflict ≠ Error

Normatively:

- a conflict is **not a violation**
- a conflict is **not driver fault**
- a conflict is **not a system error**

A conflict is an **informational state**, not a judgment.

---

## 7. Mandatory Conflict Traceability

Every conflict MUST:
- be explicitly recorded in the trace log
- have a unique identifier
- include the applied resolution rule
- be fully reconstructible during audit

---

## 8. Unresolvable Conflicts

If:
- a conflict cannot be resolved deterministically
- without violating timeline integrity

Then:

> **The ODWS-CE core MUST fail explicitly**

Explicit failure is **correct behavior**.

---

## 9. Normative Summary

In ODWS:

- conflicts are expected
- inputs are never deleted
- reality is not guessed
- decisions are explicit
- determinism is mandatory
- failure is preferable to false certainty

If resolving a conflict requires violating the timeline,
**the resolution is invalid**.
