> ⚠ This file is auto-generated from docs/en/document-map.md.
> Do not edit manually.

<!--
odws:
  layer: descriptive
-->

# ODWS Document Map
## Canonical Structure of ODWS Documentation

This document provides an authoritative map of all documents
within the Open Driver Worktime Space (ODWS).

It defines:
- which documents exist,
- their purpose,
- their layer,
- and their conceptual relationships.

This document does not define rules or perform computations.
It exists to maintain structural clarity.

---

## 0. Purpose of This Document

The purpose of this document is to prevent:
- duplication,
- conceptual overlap,
- inconsistent interpretation,
- and documentation drift.

It serves as the single source of truth
for ODWS documentation structure.

---

## 1. ODWS Document Layers

ODWS documentation is divided into layers.

### 1.1 Normative Layer

Normative documents define:
- what is considered true within ODWS,
- how reality is defined,
- what all other models must respect.

Normative documents are:
- stable,
- minimal,
- resistant to interpretation.

### 1.2 Descriptive Layer

Descriptive documents:
- explain reality,
- describe operational conditions,
- provide context and reasoning.

They MUST NOT redefine normative statements.

---

## 2. Normative Documents

The following documents define ODWS norms:

- `working-time-definition.md`
- `workday.md`
- `waiting-standby-and-other-work.md`

Each normative document establishes a foundational rule
that other documents must not contradict.

---

## 3. Descriptive Documents

The following documents describe context, operation, and reasoning:

- `operational-realities.md`
- `human-context.md`
- `deterministic-trace-log.md`
- `scope.md`
- `vision.md`
- *(and others)*

Descriptive documents may evolve
without altering normative foundations.

---

## 4. Conceptual Relationships

Conceptually:

- `working-time-definition.md` defines what work is
- `workday.md` defines how work is modeled
- `waiting-standby-and-other-work.md` explains key concepts
- descriptive documents explain why and how this reflects reality

No document may invert this dependency direction.

---

## 5. Rules for Adding New Documents

Any new document MUST:

- declare its layer (`normative` or `descriptive`),
- define its purpose,
- state its relationship to existing documents.

Normative documents are added only when strictly necessary.

---

## 6. Stability and Evolution

Normative documents are expected to remain stable.

Descriptive documents may evolve
as understanding, technology, or context changes.

This separation ensures long-term consistency
without stagnation.

---
