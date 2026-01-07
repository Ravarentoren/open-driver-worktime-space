# Open Driver Worktime Space (ODWS)

Deterministic, auditable computation of driver worktime  
grounded in reality, not assumptions.

ODWS is an open specification and reference space  
for recording, correcting, and computing professional driver worktime  
across real-world conditions.

---

## 🧭 What is ODWS

Open Driver Worktime Space (ODWS) is a human-centered model  
for describing and computing driver worktime as it actually happened.

It separates:
- **facts** from **interpretation**,

- **input** from **computation**,

- **reality** from **administrative decisions**.

ODWS does not judge.  
ODWS records, computes, and explains.

---

## 🧠 Core Principles

**Reality first**  
  What happened is always recorded before asking whether it was allowed.

**Deterministic computation**  
  Same inputs always produce the same results, with a full trace.

**Human-correctable inputs**  
  Delayed recognition and correction are normal properties of reality.

**Separation of concerns**  
  Facts, computation, legal meaning, and payroll decisions are distinct layers.

**Technology is not authority**  
  Devices, spreadsheets, and systems are signals — not truth.

---

## 👥 Who is this for

ODWS is designed for:

**Professional drivers**
who need transparent, explainable records of their work.

**Employers**
who need auditable and reproducible computations,

**Developers**
who want a clear, deterministic model instead of spreadsheet chaos.

**Auditors and inspectors**
who need to understand *how* a result was obtained.

---

## 📂 Documentation

The normative specification lives in the `docs/` directory.

Documentation is:

- explicit,

- human-readable,

- machine-processable,

- available in multiple languages.

 If it is not written down, it does not exist.

---

## 🔗 Related Repositories

This repository defines the **ODWS specification**.

 A reference implementation and product-oriented repository
is developed separately:

➡️ https://github.com/Ravarentoren/odws-compensation-engine

The separation is intentional:

- this repository focuses on concepts and rules,
  
- implementation repositories focus on concrete behavior and tooling.

---

## 💬 Discussion & Collaboration

All discussion happens openly on GitHub.

Use Discussions for:
- questions
- design feedback
- real-world scenarios
- disagreements and alternatives

The goal is clarity, not consensus.

➡️ **Go to Discussions:**  
https://github.com/Ravarentoren/open-driver-worktime-space/discussions

---

## ⚠️ A note on understanding and limits

No individual, organization, or system  
has a patent on reason, truth, or understanding.

What exists here is the result of:

- long-term sharing of experience,

- learning technical constraints,

- observing social and operational reality,

- correcting mistakes over time.

ODWS does not claim completeness or infallibility.  
It exists to make assumptions visible  
and reasoning inspectable.

---

## ⚖️ License

This project is licensed under the **Apache License 2.0**.

The license is chosen to:

- allow free use and redistribution,

- enable modification and extension,

- avoid personal or institutional lock-in,

- support long-term transfer and stewardship.

---

## 🗣️ Documentation translations

This repository includes a **local-only documentation translation helper** intended for a **single responsible maintainer**.

➡️ Translation script:

https://github.com/Ravarentoren/open-driver-worktime-space/blob/main/scripts/translate_docs.sh

The script:

- translates documentation from `docs/en/` into selected languages,

- preserves the original English documents as authoritative,

- keeps exactly one metadata block per document,

- is designed to run **locally** (e.g. Termux, Linux, macOS),

- does **not** enforce CI, checks, or automatic overwrites.

### ⚒️ Usage

bash:

- Normal safe run + Show actions

DEBUG=true ./scripts/translate_docs.sh  

- Overwrite all

FORCE=true ./scripts/translate_docs.sh  

- Dry run & No network

OFFLINE=true ./scripts/translate_docs.sh

- Full rebuild with verbose output

FORCE=true DEBUG=true ./scripts/translate_docs.sh

### 🎓 Philosophy

Translations are provided as a communication aid, not as a legal or normative source.

- Human-reviewed edits are allowed and expected.

- No automatic checks enforce equality with machine translations.

- Responsibility remains with the maintainer of the translation.

The English documentation remains the authoritative source.

---

## 📑 Documentation consistency checks

This repository includes a small helper script to verify **ODWS documentation layer consistency**.

➡️ Layer check script:

https://github.com/Ravarentoren/open-driver-worktime-space/blob/main/scripts/check_odws_layers.sh

The script:

- scans `docs/en/` documentation,

- reads ODWS metadata blocks,

- verifies that each document belongs to exactly one valid layer,

- reports missing or invalid layer declarations,

- does **not** modify any files.

### ⚒️ Usage

bash:

./scripts/check_odws_layers.sh

---
