<!--
odws:
  layer: normative
  scope: terminology-boundary
-->





# ODWS Terminology Boundary  
## Normative Definition of Conceptual Limits

This document **normatively defines the conceptual and terminological boundaries**
used within the Open Driver Worktime Space (ODWS).

Its purpose is to:
- protect the technical core from semantic drift
- separate **reality** from **interpretation**
- prevent the injection of external terminology into core logic

This document is **normative**.

This document applies in conjunction with:

- [ODWS Documentation Layers](documentation-layers.md)
- [ODWS-CE Core – Normative Definition](odws-ce-core.md)

---

## 1. Purpose of Terminology Boundaries

ODWS operates across multiple domains:
- human reality
- technical recording devices
- legal frameworks
- payroll and administrative systems

Each domain uses **different terminology**.

This document defines:
- which terms are valid **inside the ODWS core**
- which terms belong **outside the core**
- where interpretation must begin

---

## 2. Reality vs. Interpretation

Normatively:

- **Reality consists of states that actually occurred**
- **Interpretation assigns meaning to those states**
- **Terminology does not create reality**

The ODWS core operates **only on reality**, not on interpretation.

The separation between reality and interpretation is defined normatively in:
- [ODWS Documentation Layers](documentation-layers.md)

---

## 3. Fundamental Reality States

For the purposes of the ODWS core, **only two fundamental real states exist**:

- **Work**
- **Rest**

At any real point in time:
- exactly one of these states exists
- no combination or overlap is possible

---

## 4. Definition of Work

Normatively, **work** is defined as:

> Any real state that is **not rest**.

This includes, without subdivision:
- driving
- work as recorded by devices
- other activity
- standby or waiting
- safety-related breaks
- manipulation of goods
- administrative actions
- any other activity serving the continuation or context of work

The ODWS core **does not distinguish** between these subtypes.

---

## 5. Definition of Rest

**Rest** is defined as:
- a real state of non-activity
- daily or weekly rest
- any genuine interruption of work

Rest is a **real state**, not a technical flag or administrative label.

---

## 6. Position on Device Terminology

Technical devices (e.g. tachographs):
- record signals
- use predefined symbols
- provide categorized inputs

Normatively:
- device categories are **inputs**
- device terminology does **not define reality**
- the core does not inherit device semantics

The handling of device-derived inputs is defined normatively in:
- [ODWS-CE Core – Normative Definition](odws-ce-core.md)

---

## 7. Position on Legal and Payroll Terminology

Legal, administrative, and payroll terms:
- are jurisdiction-dependent
- may conflict with each other
- may redefine identical reality differently

Normatively:
- these terms are **interpretative**
- they are **not valid inside the core**
- they belong to **interpretative or computational layers**

---

## 8. Prohibition of Semantic Injection

The following is **normatively prohibited** inside the ODWS core:

- selective reclassification of work
- exclusion of work based on preference or convenience
- introduction of third-party terminology
- retroactive semantic manipulation

The core must remain:
- neutral
- deterministic
- reality-preserving

---

## 9. Relationship to Other Documents

This document:
- constrains terminology used by the **ODWS-CE core**
- supports the **ODWS documentation layers model**

Normative references:
- [ODWS Documentation Layers](documentation-layers.md)
- [ODWS-CE Core – Normative Definition](odws-ce-core.md)

Descriptive documents may:
- explain real-world conflicts
- describe misuse of terminology
- document operational pressure

Interpretative documents may:
- apply legal meaning
- perform payroll calculations
- define compliance logic

---

## 10. Normative Summary

In ODWS:

- reality precedes terminology
- work is everything that is not rest
- interpretation begins **after** the core
- the core protects reality from authority

If terminology conflicts with reality,
**terminology must yield**.

This boundary is enforced by the ODWS-CE core and must not be bypassed by downstream layers.
