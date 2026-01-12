<!--
odws:
  layer: normative
  domain: core
  topic: identity-of-the-event
  version: 1.0
  status: draft
  language: en
  license: Apache-2.0
-->

# Identity of the Event
## Normative Definition of the Atomic Unit of Reality in ODWS

This document **normatively defines the concept of an event**
as the smallest indivisible unit of reality
processed by the ODWS-CE core.

Its purpose is to:
- define what an event **is** and **is not**
- prevent aggregation, compression, or semantic distortion of reality
- establish a deterministic and auditable foundation for all computation

This document is **normative**.

It applies in conjunction with:
- *ODWS Documentation Layers*
- *ODWS-CE Core – Normative Definition*
- *Identity of Time and Working Time*
- *Identity of the Driver*
- *Identity of the Means*
- *ODWS Terminology Boundary*

---

## 1. Event as a Reality Fact

Normatively:

- an **event** is a factual occurrence in reality
- an event **happened or did not happen**
- an event is **not an interpretation**
- an event is **not a conclusion**

An event represents **what occurred**, not **what it means**.

---

## 2. Atomic Nature of an Event

Normatively:

- an event is **atomic**
- an event MUST NOT be subdivided
- an event MUST NOT be aggregated with other events

If something can be split into smaller factual parts,
it is **not** a single event.

---

## 3. Mandatory Properties of an Event

Every event MUST have:

1. **Time reference**
   - a concrete timestamp or time interval
   - belonging to the single continuous timeline

2. **Reality state**
   - work or rest
   - exactly one state per event

3. **Human reference**
   - the driver to whom the event belongs

An event MAY additionally have:
- means reference
- location reference
- source reference (device, manual, import)
- metadata for traceability

---

## 4. Event ≠ Time Interval Aggregation

Normatively prohibited:

- representing multiple events as one
- collapsing time intervals into summaries
- pre-calculating durations at event level

Durations are:
- derived **from events**
- never embedded **inside events**

---

## 5. Event ≠ Interpretation

An event MUST NOT contain:

- legal qualification
- payroll classification
- compliance judgment
- employer-specific meaning

All such meaning belongs to **downstream layers**.

---

## 6. Event ≠ Record Source

Normatively:

- the **source of an event** is not the event itself
- a tachograph record is **not** an event
- a manual entry is **not** an event

Events are **derived from records**, not identical to them.

Multiple records MAY describe:
- the same event
- overlapping reality

The core resolves records into events,
**without choosing an authority**.

---

## 7. Event Corrections and Reality Integrity

Normatively:

- events are **never deleted**
- corrections create **new events**
- original events remain traceable

Reality is preserved by:
- addition,
- not erasure.

---

## 8. Determinism Requirement

For identical input reality:

- the same set of events MUST be produced
- ordering MUST be identical
- structure MUST be reproducible

Event identity is a prerequisite for determinism.

---

## 9. Relation to the ODWS-CE Core

The ODWS-CE core:

- operates exclusively on events
- builds timelines from events
- derives computation only from events
- never computes directly from raw records

Events are the **sole factual substrate** of the core.

---

## 10. Normative Summary

In ODWS:

- an event is an atomic fact of reality
- events are time-bound, human-bound, and state-bound
- events do not interpret themselves
- events are not records and not conclusions

If something did not happen,
**it is not an event**.

If something happened,
**it must exist as an event**.
