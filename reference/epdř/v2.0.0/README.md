# 📊 EPDŘ – Evidence pracovní doby řidiče (Reference)

## 🏷️ Verze dat
**v2.0.0**

---

## 🧭 Pro koho je tato tabulka určena

EPDŘ (Evidence pracovní doby řidiče) je **referenční tabulka**
určená především:

- 🚛 **profesionálním řidičům**

- 🤝 **zaměstnavatelům, kteří chtějí jednat férově**

- 🧾 pro osobní, kontrolní a srovnávací evidenci pracovní doby

Tabulka je navržena **z pohledu zaměstnance** a má pomoci **rozumět vlastní pracovní době**, nikoliv ji zkreslovat.

---

## 🎯 K čemu tabulka slouží

EPDŘ umožňuje:

- 📋 evidovat skutečně odpracovanou dobu
- 🧮 vypočítat:
  - pracovní dobu v kalendářním dni
  - noční práci
  - práci o víkendech
  - práci ve státní svátky
  - práci přesčas

- 🔍 kontrolovat logickou a časovou návaznost údajů

- ⚠️ odhalit nesrovnalosti ve výkazech

Slouží jako **referenční a kontrolní nástroj**, nikoliv jako nástroj moci.

---

## ⚖️ Právní rámec

Tabulka vychází z následujících předpisů:

- 🇨🇿 zákon č. **262/2006 Sb.** (zákoník práce)

- 🇪🇺 Nařízení (ES) **561/2006**

- AETR (tam, kde se uplatňuje)

> Vždy v **aktuálních a platných zněních**.

---

## 🧠 Zásady návrhu

- ✔ žádná makra

- ✔ žádné skripty

- ✔ deterministické vzorce

- ✔ kompatibilita:
  - Collabora Office
  - Libre Office
  - Microsoft Excel
  - OnlyOffice

- ✔ oddělení:
  - vizuální část (ruční vstupy)
  - výpočetní logika
  - auditní vrstvy

Výsledkem je tabulka, která:
- se chová předvídatelně
- je čitelná
- je kontrolovatelná

---

## 🔐 Integrita a důvěryhodnost

Tato tabulka je vydávána jako **neměnný referenční artefakt**.

- je publikována pod **Git tagem**

- má přiřazen **SHA-256 kontrolní otisk**

- otisk je uveden **pouze v README.md**

> **Kontrolní otisk nechrání proti lidské nepoctivosti. Slouží k ověření, že zveřejněný soubor nebyl změněn mimo tento repozitář.**

---

## 🚫 Důležitá omezení

Tato tabulka:

- ❌ nenahrazuje tachograf
- ❌ není mzdový software
- ❌ není právní interpretací
- ❌ nemůže nahradit skutečné záznamy

Neřeší sankce, pokuty ani hodnocení řidiče.
Slouží výhradně k **evidenci a kontrole reality**.

---

## 🧭 Vztah k ODWS

- 🧠 **ODWS** definuje strukturu a normativní rámec

- 📊 **EPDŘ** je externí referenční artefakt

- 📁 EPDŘ **není součástí ODWS core**

- 📘 žádný software nemůže přepsat realitu

---

## 📦 Distribuce

### Git tag (neměnný stav)

https://github.com/Ravarentoren/open-driver-worktime-space/tree/epdr-v2.0.0

### Přímý odkaz ke stažení tabulky

https://raw.githubusercontent.com/Ravarentoren/open-driver-worktime-space/epdr-v2.0.0/reference/epdř/v2.0.0/EPDŘ_reference_ODWS_v2.0.0.xlsx

---

## 🔐 Kontrolní otisk (SHA-256)

ece4c885e8b03f56d254a57fdb5b4973dcffbd4a49068e2c66267ff986abae3b

Otisk byl vypočten nad souborem:

EPDŘ_reference_ODWS_v2.0.0.xlsx

Jakákoliv změna souboru vede ke změně tohoto otisku.

---

## 📜 Licence

Apache License 2.0

---

## 🌍 Závěrečná poznámka

> **Realita má přednost před záznamem.**
> Tato tabulka nemá za cíl nikoho trestat.

> Má pouze pomoci zaznamenat to, co se skutečně stalo.

---
