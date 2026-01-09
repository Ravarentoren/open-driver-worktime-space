<!--
odws:
  layer: normative
  domain: documentation
  topic: documentation-layers
  version: 2.0
  status: stable
  language: en
  license: Apache-2.0
-->





# Documentation Layers in ODWS (Normative Definition)

This document **normatively defines the complete and closed set of
documentation layers** used within the **Open Driver Worktime Space (ODWS)**.

Its purpose is to:
- ensure long-term clarity and maintainability,
- prevent uncontrolled growth of document categories,
- keep the documentation navigable for future maintainers.

This document defines **what kinds of documents may exist**.
It does **not** prescribe tools, workflows, or authorship.

---

## 1. Layer principle

Every documentation file in ODWS **MUST belong to exactly one layer**.

A layer defines:
- the nature of statements contained in a document,
- how the document may be used,
- its relationship to reality, interpretation, and computation.

A layer does **not** define:
- correctness or authority of authors,
- organizational processes,
- implementation details.

---

## 2. Closed set of documentation layers

ODWS defines the following **closed and exhaustive set** of documentation layers:

- `normative`
- `descriptive`
- `conceptual`
- `analytical`
- `contextual`
- `procedural`
- `reference`
- `governance`

**No other documentation layers are permitted.**

Any introduction of a new layer **REQUIRES an explicit change to this document**.

---

## 3. Normative layer

The `normative` layer defines **what is true in ODWS**.

It:
- establishes non-negotiable rules,
- defines system boundaries,
- uses normative language (MUST, SHALL, MUST NOT).

Normative documents are the **source of truth** for ODWS.

---

## 4. Descriptive layer

The `descriptive` layer explains and describes reality as observed.

It:
- provides explanations and context,
- describes how things exist in practice,
- does not introduce rules or obligations.

Descriptive documents **never modify normative content**.

---

## 5. Conceptual layer

The `conceptual` layer defines mental models and abstractions.

It:
- introduces concepts and terminology,
- explains how to think about the domain,
- supports understanding without prescribing behavior.

---

## 6. Analytical layer

The `analytical` layer examines consequences and implications.

It:
- analyzes impacts of rules or decisions,
- explores edge cases and trade-offs,
- does not define new rules.

---

## 7. Contextual layer

The `contextual` layer describes the environment in which ODWS operates.

It:
- captures legal, social, and operational context,
- explains external constraints,
- does not reinterpret or override ODWS rules.

---

## 8. Procedural layer

The `procedural` layer describes **how things are done**.

It:
- documents workflows and processes,
- is primarily intended for maintainers,
- is non-normative and replaceable.

---

## 9. Reference layer

The `reference` layer provides structured lookup material.

It:
- contains definitions, mappings, and summaries,
- is optimized for quick access,
- does not introduce interpretation.

---

## 10. Governance layer

The `governance` layer defines project stewardship.

It:
- describes decision-making processes,
- defines maintenance and change rules,
- ensures long-term continuity of ODWS.

---

## 11. Separation and discipline

ODWS documentation layers **MUST NOT be mixed**.

Layer separation is intentional and protects:
- reality from authority,
- computation from interpretation,
- maintainers from structural chaos.

---

## 12. Normative summary

In ODWS:
- the set of documentation layers is closed,
- every document belongs to exactly one layer,
- layers are defined for clarity, not completeness,
- structural simplicity is a design goal.
