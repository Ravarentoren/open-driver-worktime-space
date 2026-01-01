# Deterministic Trace Log (DTL)

The Deterministic Trace Log (DTL) is a mandatory, normative component
of the Open Driver Worktime Space (ODWS) specification.

DTL exists to ensure that every computation performed by an ODWS-compatible
system is transparent, reproducible, and auditable.

A system that produces results without a Deterministic Trace Log
MUST NOT claim ODWS compatibility.

---

## 1. Core Principle

> Nothing happens silently.

Every operation, transformation, derivation, or omission
performed by the system MUST be explicitly recorded.

---

## 2. Definition

The Deterministic Trace Log is an append-only, chronological record
of all decision-relevant steps taken during data processing.

DTL allows:

- reconstruction of the computation process
- verification of determinism
- audit without access to source code
- comparison of results across system versions

---

## 3. Mandatory Properties

DTL MUST be:

- deterministic
- append-only
- strictly ordered
- immutable once written
- reference-based (no data duplication)
- machine-readable
- human-readable
- independent of implementation language

DTL MUST NOT:

- delete entries
- overwrite entries
- collapse multiple steps into one
- perform implicit or undocumented decisions

---

## 4. Trace Entry

Each system step produces exactly one Trace Entry.

### Mandatory fields:

- trace_id  
  Unique identifier of the processing run

- sequence  
  Monotonic sequence number starting from 1

- timestamp  
  Technical timestamp of entry creation (non-legal)

- component  
  Name of the system component producing the entry

- operation  
  Type of operation performed

- input_ref  
  Reference to input entity or entities

- output_ref  
  Reference to output entity or entities

- decision  
  Description of the decision taken

- reason  
  Explicit justification for the decision

- confidence  
  Numeric value in range 0.0 – 1.0 expressing certainty

---

## 5. Operation Types

Operation MUST be one of the following:

- READ
- INTERPRET
- DERIVE
- MERGE
- SPLIT
- IGNORE
- FLAG
- FINALIZE

Ignoring data is a decision and MUST be logged explicitly.

---

## 6. Determinism Requirement

> Same input data + same specification version
> MUST produce an identical Deterministic Trace Log.

Except for the technical timestamp,
all fields MUST be bitwise identical.

---

## 7. On-Demand Computation Entries

DTL MUST record computations
performed before legal or administrative finalization.

Such entries MUST include:

- computation_state = INFORMATIONAL
- assumed or proposed input values
- explicit note that recomputation may occur

On-demand computations:
- are not provisional guesses,
- are fully deterministic,
- remain auditable permanently.

Absence of a final legal act
MUST NOT prevent computation or logging.
## 8. Relationship to ODWS

DTL is part of the ODWS specification itself,
not an implementation detail.

Any implementation claiming ODWS compatibility
MUST fully implement Deterministic Trace Log behavior.

---

## 9. Purpose Limitation

DTL records how decisions were made.
It does not prescribe legal, economic, or political interpretation.

DTL exists to describe reality, not to enforce conclusions.

DTL explicitly includes human corrections and amendments
as first-class deterministic inputs.
