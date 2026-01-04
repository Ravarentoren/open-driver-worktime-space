<!--
odws:
  layer: descriptive
-->


<!--
odws:
  layer: descriptive
-->


# Input Sources and Corrections

This document defines all permitted input sources
within the Open Driver Worktime Space (ODWS)
and establishes their equal validity.

ODWS records reality first.
Input source never defines truth.

---

## 1. Core Principle

> The source of data is not the authority.
> Reality is the authority.

ODWS does not privilege technology over humans
and does not privilege automation over explanation.

---

## 2. Permitted Input Sources

ODWS MUST accept work-related input data
from multiple independent sources.

All sources are considered **equally valid**.

---

### 2.1 Automatic Technical Records

Examples include:
- digital tachograph
- analog tachograph
- vehicle telemetry
- onboard monitoring systems

These records:
- represent device state,
- may lack intent or context,
- may contain errors or omissions.

They are **signals**, not truth.

---

### 2.2 Electronic Human Input

Examples include:
- web forms
- mobile applications
- offline electronic forms

Characteristics:
- human-entered
- editable
- correctable
- explanatory

---

### 2.3 Tabular Documents

Supported formats include:
- XLSX
- ODS
- XLS
- CSV

Tabular documents:
- are treated strictly as input media,
- MUST NOT be relied upon for authoritative computation,
- MAY contain manual corrections and explanations.

ODWS explicitly rejects the assumption
that spreadsheet computation is reliable or normative.

---

### 2.4 Fully Manual Records

Examples include:
- paper records
- handwritten logs
- retrospective descriptions
- reconstructed timelines

ODWS MUST accept manual records
even when no technical record exists.

Absence of a device record
does not imply absence of work.

---

## 3. Equal Validity of Sources

No input source:
- has higher truth value,
- overrides another automatically,
- invalidates human correction.

Conflicts between sources
are resolved through explanation,
not suppression.

---

## 4. Mandatory Correctability

Every input source MUST support:

- correction,
- amendment,
- supplementation,
- delayed clarification.

Original data is never deleted.
Corrections are additional facts.

---

## 5. Deterministic Processing

All input sources:
- feed the same deterministic computation pipeline,
- participate equally in recomputation,
- are recorded in the Deterministic Trace Log (DTL).

---

## 6. Protection Against Technical Absolutism

Any system that:
- treats technical records as unquestionable truth,
- refuses human correction,
- enforces silent normalization,

is incompatible with ODWS.

---

ODWS exists to connect:
- the lived reality of drivers,
- the administrative needs of employers,
- and deterministic, auditable computation.
