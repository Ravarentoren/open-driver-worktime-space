<!--
odws:
  layer: normative
  scope: documentation-layers
-->





# Documentation Layers in ODWS (Normative Definition)

This document **normatively defines documentation layers** used within
the **Open Driver Worktime Space (ODWS)**.

Its purpose is to:
- name types of statements,
- separate responsibilities,
- prevent mixing reality, interpretation, and computation.

This document **does not prescribe workflows**, tools, or roles.
It defines only the **nature of documents**.

---

## 1. Layer principle

Every document in ODWS **must belong to exactly one layer**.

A layer defines:
- the type of statements a document contains,
- how it may be used,
- its relationship to reality and computation.

A layer does **not** define:
- authorship,
- organizational usage,
- correctness or completeness.

---

## 2. Defined layers overview

ODWS defines the following documentation layers:

- `normative`
- `descriptive`
- `interpretative`
- `computational`
- `guidance`

The list is **open to future extension**,
but each layer must be **explicitly named and defined**.

---

## 3. Normative

The `normative` layer:

- defines **what ODWS is**
- establishes **non-negotiable foundations**
- sets **system boundaries**

Normative documents:
- are not examples
- are not recommendations
- are not explanations

They serve as the **reference baseline** for everything else.

---

## 4. Descriptive

The `descriptive` layer:

- describes reality, context, and observations
- explains **how things exist in practice**
- captures experience and environment

Descriptive documents:
- do not modify normative definitions
- do not interpret law
- do not define computations

---

## 5. Interpretative

The `interpretative` layer:

- interprets normative and descriptive content
- describes **possible interpretations**
- presents differing views or regimes

Interpretations:
- are not binding
- may differ across countries, organizations, or teams
- may contradict each other

Interpretive conflict **is not a system error**.

---

## 6. Computational

The `computational` layer:

- defines **deterministic computation rules**
- specifies algorithms, transformations, and logic
- serves as input for implementations

Computational documents:
- do not judge legality or fairness
- do not assess reality
- **only compute from defined inputs**

---

## 7. Guidance

The `guidance` layer:

- provides recommendations, instructions, and examples
- helps humans use the system
- accounts for human factors

Guidance:
- is non-binding
- does not alter any other layer
- may be replaced or ignored

---

## 8. Separation of responsibilities

ODWS **strictly separates**:

- definition of reality
- description of reality
- interpretation
- computation
- human guidance

This separation is **intentional and protective**.

---

## 9. Normative summary

In ODWS:

- layers define the nature of statements
- each document belongs to exactly one layer
- layers must not be mixed
- conflicts between layers are information, not defects

This model protects:
- reality from authority
- computation from interpretation
- humans from systems
