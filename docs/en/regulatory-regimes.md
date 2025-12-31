# Regulatory Regimes and Applicability Context

This document defines how regulatory regimes relate to the
Open Driver Worktime Space (ODWS) model.

ODWS records reality first.
Regulatory compliance is evaluated separately.

---

## 1. Existence of Multiple Regulatory Regimes

Professional driver worktime in Europe is governed by
multiple regulatory frameworks.

The two primary regimes are:

- **AETR** (European Agreement concerning the Work of Crews of Vehicles Engaged in International Road Transport)
- **Regulation (EC) No 561/2006** (ES561)

These regimes coexist and differ in certain operational constraints.

---

## 2. Applicability by Territory

The applicable regulatory regime is determined by
the **territory where the work is performed**.

A change of regime may occur:
- during an ongoing work period,
- without any change in employer,
- without any change in employment contract.

ODWS therefore treats regulatory regime
as **contextual information**, not as a structural constraint.

---

## 3. Core Principle

> ODWS MUST record what actually happened,
> regardless of whether it was permitted under a specific regulation.

Recording reality and assessing compliance
are explicitly separated concerns.

---

## 4. Key Difference: Work Period Segmentation

One significant difference between regimes concerns
the number of work periods allowed within a calendar day.

### 4.1 AETR
- allows **only one work period per calendar day**
- does not permit restarting work after a daily rest within the same day

### 4.2 ES561
- allows **multiple work periods within a calendar day**
- permits splitting work around daily rest periods

ODWS core does NOT enforce these constraints.

Such limits MAY be evaluated only
in higher-level regulatory interpretation layers.

---

## 5. Representation in ODWS

Regulatory regime MAY be represented as metadata, for example:

```json
"regulatory_regime": "ES561"

or

```json
"regulatory_regime": "AETR"

This metadata:

- does not affect core computation,
- does not restrict recorded reality,
- serves only for interpretation and validation.

---

## 6. Relationship to Compensation

Regulatory regime constraints exist for road safety and compliance purposes only.

They MUST NOT:

- reduce recorded work time,
- exclude performed work from compensation,
- override physical reality.

Compensation is derived from recorded work reality, independently of regulatory limits.

---

