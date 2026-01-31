# 📊 EPDŘ – Evidence pracovní doby řidiče (Reference)

## 🏷️ Verze dat
**v2.0.0**

---

## 🎯 Účel dokumentu

EPDŘ (Evidence pracovní doby řidiče) je **referenční tabulka**
určená k:

- 📋 osobní evidenci pracovní doby řidiče

- 🧮 výpočtům pracovní doby, noční práce, víkendů a svátků

- 🔍 kontrole souladu s pracovněprávními předpisy

Tento soubor je navržen **z pohledu zaměstnance**.

---

## ⚖️ Právní rámec

- 🇨🇿 zákon č. **262/2006 Sb.** (zákoník práce)

- 🇪🇺 Nařízení (ES) **561/2006**

- AETR (tam, kde se uplatňuje)

  **V aktuálních a platných zněních.**
---

## 🧠 Základní principy návrhu

- ✔ bez maker a skriptů

- ✔ deterministické chování

- ✔ kompatibilita napříč:
  - LibreOffice
  - Excel
  - OnlyOffice

- ✔ oddělení:
  - vizuální části
  - výpočetní logiky
  - auditní vrstvy

---

## 🔐 Integrita a důkazní stopa

Každá vydaná verze tabulky:

- je **neměnný artefakt**

- má přiřazen **SHA-256 kontrolní otisk**

- je publikována pod **Git tagem**

> **Pokud kontrolní otisk nesouhlasí, soubor byl změněn a není považován za důvěryhodný.**

---

## 🚫 Omezení

Tato tabulka:

- ❌ nenahrazuje tachograf
- ❌ není mzdový software
- ❌ není právní interpretací
- ❌ nemůže nahradit reálné záznamy

Slouží výhradně jako **referenční a kontrolní nástroj**.

---

## 🧭 Vztah k ODWS

- 🧠 **ODWS** definuje pravidla, strukturu a normativní rámec

- 📊 **EPDŘ** je externí referenční artefakt

- 📁 EPDŘ **není součástí ODWS core**

---

## 📜 Licence

Apache License 2.0

---

## 🌍 Filosofická poznámka

> **Realita má přednost před záznamem.** 

> **Žádná tabulka nemůže přepsat skutečnost,pouze ji zaznamenat.**

---

## 🔐 Kontrolní otisk (SHA-256)

1a6bd9678a595909c2510405bfeebb619d5b0c389c5317e218766d4288b5da4e

---
