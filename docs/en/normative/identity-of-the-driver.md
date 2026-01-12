<!--
odws:
  layer: normative
  domain: input
  topic: identity-of-the-driver
  version: 1.0
  status: stable
  language: en
  license: Apache-2.0
-->

# Identity of the Driver  
## Normative Definition of the Human Actor in ODWS

This document **normatively defines the identity of the driver as a human actor**
within the Open Driver Worktime Space (ODWS).

Its purpose is to:
- prevent substitution of human identity by technical or organizational artifacts,
- prohibit semantic conflation of person, role, device, or employment,
- establish a stable and non-ambiguous input model for the ODWS-CE core.

This document is **normative**.

It applies in conjunction with:
- *ODWS Documentation Layers*
- *ODWS-CE Core – Normative Definition*
- *Physical and Technical Limits of Recording Devices*
- *ODWS Terminology Boundary*

---

## 1. Driver as a Human Being

Normatively:

- a driver is a **physical human being**
- the driver exists **independently of systems, devices, and organizations**
- the driver’s existence **does not depend on employment status**
- the driver’s reality **does not begin or end with technical recording**

The driver is the **source of reality**, not its representation.

---

## 2. Prohibition of Identity Substitution

The following substitutions are **normatively prohibited** in ODWS:

- **driver ≠ employee**
- **driver ≠ driver card**
- **driver ≠ vehicle**
- **driver ≠ system role**

These substitutions MUST NOT be used:
- in the ODWS-CE core,
- in input validation,
- in data modeling,
- in computational logic.

Any system behavior relying on such substitution is **invalid in ODWS**.

---

## 3. Driver ≠ Employee

Normatively:

- a driver MAY have:
  - one employer,
  - multiple employers,
  - no employer
- employment relationships are **legal constructs**, not identity definitions
- driver reality exists **before, between, and after** employment contracts

The ODWS-CE core:
- MUST NOT derive driver identity from employment data
- MUST NOT assume continuity or discontinuity of reality based on employment

---

## 4. Driver ≠ Driver Card

Normatively:

- a driver card is a **physical technical artifact**
- the card identifies access to a device, **not the person**
- the card:
  - may be absent,
  - may be damaged,
  - may be inaccessible,
  - may be temporarily unusable

Therefore:

- absence of a card **does not negate driver identity**
- absence of a card **does not negate driver reality**
- absence of a record **is not absence of activity**

---

## 5. Driver ≠ Vehicle

Normatively:

- a driver is **not bound to a single vehicle**
- a driver may:
  - change vehicles,
  - operate outside vehicles,
  - accompany vehicles in multimodal transport
- vehicle-bound recording **does not define driver existence**

The ODWS-CE core:
- MUST NOT treat vehicle identity as driver identity
- MUST NOT infer driver presence solely from vehicle data

---

## 6. Driver ≠ System Role

Normatively:

- system roles (user, operator, account, profile) are **technical abstractions**
- they exist **only within specific systems**
- they are **not human identities**

The ODWS-CE core:
- MUST NOT equate driver identity with any system role
- MUST NOT depend on external system semantics for identity definition

---

## 7. Single Reality Principle

Normatively:

- a driver has **exactly one real state at any given moment**
- a driver cannot:
  - work and rest simultaneously,
  - occupy multiple real states at once
- aggregation or subdivision of time is **interpretation**, not reality

The core operates on **reality**, not on administrative partitions.

---

## 8. Relation to ODWS-CE Core

The ODWS-CE core:

- identifies the **human actor**
- preserves continuity of human reality
- does not judge legality, employment, or remuneration
- provides a stable foundation for subsequent layers

Identity integrity is a **precondition for determinism**.

---

## 9. Normative Summary

In ODWS:

- the driver is a human being, not a construct
- identity is not granted by devices, employers, or systems
- technical and legal artifacts MUST NOT replace human reality
- interpretation begins only after identity is preserved

If a system conflicts with human identity,  
**the system is wrong — not the human**.
