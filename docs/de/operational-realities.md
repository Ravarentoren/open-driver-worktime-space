> ⚠ This file is auto-generated from docs/en/operational-realities.md.
> Do not edit manually.

# Operational Realities of Driver Worktime Recording

This document describes real-world operational conditions observed in daily
professional driving practice.

It exists to ensure that the ODWS model remains grounded in physical reality,
human factors, and actual device behavior — not in idealized assumptions.

This is a descriptive document, not a legal or moral judgement.

---

## 1. Human Factors and Cognitive Load

Professional drivers operate under continuous cognitive and psychological load:
- traffic conditions
- time pressure
- safety responsibility
- environmental stress
- multitasking requirements

In such conditions, **forgetting manual device input is normal**.

For this reason:
- missing inputs
- delayed inputs
- incorrect mode selection

are not exceptions, but expected characteristics of real operational data.

Systems must be designed to tolerate this reality.

---

## 2. Device Configuration Variability

Digital tachographs allow multiple legitimate configuration modes.

Observed configurations include:

### 2.1 Engine-independent mode
- engine shutdown does NOT change activity state
- activity remains in "work" until explicitly changed by the driver
- aligns with the fact that work often continues after engine shutdown

### 2.2 Engine-dependent mode
- engine shutdown automatically switches to "rest"
- requires the driver to manually correct the state after nearly every stop
- significantly increases cognitive load and error probability

Both configurations are legal and manufacturer-supported.

---

## 3. Device State Is Not Work Reality

Tachograph activity icons (e.g. work, rest) represent **device-reported states**,
not objective work reality.

Automatic state changes:
- may occur without driver intent
- may misclassify ongoing work as rest
- may create misleading records

Therefore:
- device state MUST NOT be treated as authoritative truth
- it is only one signal among many

---

## 4. Manual Corrections Are Legitimate

European regulations explicitly allow manual corrections on tachograph printouts.

This acknowledges that:
- device records may be incomplete or incorrect
- human correction is part of the system
- recorded data is not infallible

A corrected record does not represent manipulation, but restoration of reality.

---

## 5. Forgotten Rest Entries

Failure to manually mark rest periods:
- may constitute a formal offense if left uncorrected
- is legally correctable by the driver

From a factual perspective:
- the absence of a rest entry does NOT imply absence of rest
- reality exists independently of device input

Systems must distinguish between:
- missing data
- and missing reality

---

## 6. Short Movements During Rest

Short vehicle movements during rest occur frequently, most commonly due to:
- collegial cooperation between drivers
- lack of parking space
- safety or access considerations

Such movements:
- are typically brief (seconds to minutes)
- are non-productive
- do not represent work
- do not imply availability for work

They must not automatically invalidate rest periods.

---

## 7. Dispositional Presence vs. Rest

A critical distinction must be made between:

### 7.1 Incidental movement
- spontaneous
- non-dispositional
- not economically motivated

### 7.2 Dispositional availability
- driver is expected to move on demand
- commonly occurs at loading/unloading sites
- often misrepresented as "rest with interruptions"

Dispositional availability is **not rest**, regardless of tachograph state.

---

## 8. Movement Detection Reality

Contrary to common misconceptions:
- any vehicle movement is detected by the tachograph
- even if not immediately visible in driver activity summaries
- internal device logs retain motion information

Claims that "short movement is not recorded" are technically incorrect.

---

## 9. Core Principle

> Absence of a record does not imply absence of reality.

Any system that equates missing input with non-existent work or rest
misrepresents reality and shifts responsibility unfairly onto the driver.

---

## 10. Implications for ODWS

ODWS explicitly:
- separates events from derived intervals
- treats device states as signals, not truth
- models uncertainty and confidence
- tolerates human error without penalization
- prioritizes physical and operational reality

This document serves as a permanent reference for those principles.

---

## 11. Shift Duration and Compensation Separation

Shift duration is a safety control construct only.

It exists solely for:
- road safety regulation,
- fatigue management,
- compliance monitoring.

Shift duration:
- has no effect on wage computation,
- must not limit paid work time,
- must not be used as a payroll metric.

Compensation is based on the performed work period
as defined independently from shift duration limits.
