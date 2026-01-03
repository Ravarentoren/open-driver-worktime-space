> ⚠ This file is auto-generated from docs/en/workday.md.
> Do not edit manually.

<!--
odws:
  layer: normative
-->


# Driver Workday – Core Data Model (Workday)

This document defines the **core data model of a driver's workday**
within the Open Driver Worktime Space (ODWS) project.

The model describes **observable, real-world work facts only**.
It does not include economic, wage-related, or legal interpretations.

It serves as input for deterministic computation
in the core of the system.

---

## 1. Fundamental Principles

The core workday model:

- describes **what actually happened**
- separates reality from its interpretation
- is independent of wage and legal constructs
- is applicable across states and systems

The model is designed to:

- be long-term sustainable
- be auditable
- allow multiple interpretative layers
  without distorting the underlying data

The model explicitly assumes that input data
may contain errors caused by human factors
and operational stress.

Missing, duplicated, or temporally incorrect inputs
are not treated as exceptions,
but as a normal part of real-world workday data.

---

## 2. Core Work Time Computation Rule

The ODWS core always computes the full work period.

Work time is defined as the entire time interval
between the end of one daily rest
and the beginning of the next daily rest.

Within this interval:
- all time is included in work time computation,
- no segments are excluded based on activity type,
- activity labels do not affect inclusion.

This includes:
- driving,
- work,
- other activities,
- any rest segments occurring within the work period.

Activity types serve descriptive and analytical purposes only.
They MUST NOT influence core work time computation.

---

## 3. Workday Identity

Each workday MUST be uniquely identifiable.

The minimum identity consists of:

- calendar date of the workday
- time zone
- local anonymous driver identifier

The identity exists solely to uniquely reference the record
and has no legal or personal meaning.

---

## 4. Time Segments

A workday consists of a **sequence of time segments**.

Each time segment has:

- start time
- end time
- activity type
- country of work performance

Time segments MUST NOT overlap
and MUST form a continuous timeline of the day.

The model allows an arbitrary number of work segments
within a single calendar day.

There is no fixed limit on the number of work periods
as long as they respect daily rest boundaries.

---

## 5. Events (Reality Records)

A workday MAY contain raw time events
representing individual records of driver activity.

An event is a point in time
at which a state change occurred
or information was recorded.

Events may originate from:

- automatic sources (tachograph)
- manual input (driver)
- external data imports

Events may exhibit the following characteristics:

- missing start or end
- temporal order not matching reality
- duplicate or repeated records

These characteristics are not considered model errors,
but faithful representations of real operational conditions.

---

## 6. Derived Time Intervals

Time intervals are derived
only from raw events.

A derived interval:

- has a defined start and end
- corresponds to a specific activity type
- MAY carry a confidence level

Derivation is a deterministic process
that MUST NOT modify original raw data.

The ODWS core MUST NOT silently correct raw inputs.

Any correction, completion, or interpretation MUST be:

- explicit
- traceable
- separated from the original record

---

## 7. Core Activity Types

The ODWS core operates exclusively
with the following activity types:

- **driving**
- **work**
- **rest**

These types describe the **actual physical state of the driver**
and are considered fundamental workday facts.

No additional activity types
are permitted within the core model.

---

## 8. Geographic Work Context

Each time segment MUST be associated
with a specific country of work performance.

A country change:

- is recorded as a time event
- is not considered an activity
- serves to determine the scope of work
  performed within individual jurisdictions

Geographic context is considered
a **core workday fact**
arising from the European regulatory framework.

---

## 9. Data Sources

A workday record MAY originate
from multiple data sources:

- digital tachograph
- manual input
- external file import

The data source:

- is recorded for audit purposes
- has no influence on computation
- is not used to assess record correctness

---

## 10. Explicitly Excluded Concepts

The core model INTENTIONALLY EXCLUDES concepts such as:

- on-call duty
- other work

These concepts are not considered
descriptions of physical work reality,
but technical or economic-legal constructs.

They MAY be derived
only in higher-level interpretative layers
based on core facts,
and MUST NOT be part of this model.

---

## 11. Model Extensibility

The model MAY be extended only by:

- adding higher-level structures
- without changing the meaning of core data
- without breaking deterministic computation

For a detailed explanation of waiting, standby, and other work, see waiting-standby-and-other-work.md.


The core model MUST remain stable
even if interpretation, law,
or economic conditions change.
