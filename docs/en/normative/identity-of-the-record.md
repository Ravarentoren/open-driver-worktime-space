<!--
odws:
  layer: normative
  domain: core
  topic: identity-of-the-record
  version: 1.0
  status: stable
  language: en
  license: Apache-2.0
-->

# Identity of the Record
## Normative Definition of Records in ODWS

This document **normatively defines the identity of a record**
within the Open Driver Worktime Space (ODWS).

Its purpose is to:
- clearly separate **records** from **events** and **reality**
- prohibit treating records as authoritative truth
- define deterministic handling of incomplete, delayed, or conflicting records

This document is **normative**.

It applies in conjunction with:
- *ODWS Documentation Layers*
- *ODWS-CE Core – Normative Definition*
- *Identity of the Event*
- *Identity of Time and Working Time*
- *Physical and Technical Limits of Recording Devices*
- *ODWS Terminology Boundary*

---

## 1. Record as a Technical Artifact

Normatively:

- a **record** is a technical or manual artifact
- a record is a **representation attempt** of reality
- a record is **not reality itself**

A record exists because:
- a device recorded something, or
- a human entered something

A record does **not** exist because reality requires permission.

---

## 2. Record ≠ Event

Normatively:

- a record is **not an event**
- an event is derived **from records**
- records are inputs, events are results

Therefore:

- multiple records MAY describe one event
- one record MAY describe multiple potential events
- absence of a record DOES NOT imply absence of an event

---

## 3. Record ≠ Truth

Normatively:

- records are **not authoritative**
- records may be:
  - incomplete
  - delayed
  - inaccurate
  - contradictory
- truth is not determined by certification or device type

No record has inherent priority based on:
- certification
- origin
- employer preference
- administrative convenience

---

## 4. Sources of Records

Records MAY originate from:
- tachographs
- driver cards
- manual entries
- imports from external systems
- administrative or organizational sources

All records:
- are treated uniformly
- are subject to the same validation rules
- do not override reality

---

## 5. Delayed and Retroactive Records

Normatively:

- delayed recording is a **normal property of reality**
- retroactive records are **legitimate**
- time of recording ≠ time of occurrence

The ODWS-CE core:
- MUST accept delayed records
- MUST preserve original timestamps
- MUST NOT reinterpret time due to recording delay

---

## 6. Conflicting Records

Normatively:

- conflicting records MAY exist
- conflicts are resolved by:
  - traceability,
  - ordering,
  - explicit correction
- conflicts MUST NOT result in data loss

The core:
- MUST preserve all conflicting records
- MUST derive events deterministically
- MUST allow audit of conflict resolution

---

## 7. Record Corrections

Normatively:

- records are **never deleted**
- corrections create **new records**
- original records remain traceable

Erasure of records is **prohibited**.

---

## 8. Record ≠ Legal or Payroll Statement

Normatively:

- records do not define:
  - legality
  - compliance
  - payroll entitlement
- such meanings belong to **interpretative layers**

The ODWS-CE core:
- does not judge records
- does not validate compliance
- does not calculate remuneration

---

## 9. Relation to the ODWS-CE Core

The ODWS-CE core:

- ingests records
- derives events
- builds a continuous timeline
- preserves determinism and auditability

Records are **inputs**, not conclusions.

---

## 10. Normative Summary

In ODWS:

- records are artifacts, not reality
- events are derived, not assumed
- absence of a record is not absence of reality
- conflicts are preserved, not hidden
- reality is protected from record authority

If a record contradicts reality,
**the record is questioned — not reality**.
