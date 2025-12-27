# ODWS Core

Tento adresář obsahuje **jádro projektu Open Driver Worktime Space (ODWS)**.

Jádro představuje deterministický výpočetní základ systému.
Je navrženo tak, aby bylo:

- přenositelné napříč platformami
- nezávislé na uživatelském rozhraní
- použitelné offline
- auditovatelné a testovatelné

---

## 1. Co je jádro

Jádro ODWS:

- přijímá strukturovaná vstupní data
- aplikuje explicitně definovaný výkladový model
- produkuje jednoznačný výstup

Jádro:
- **neobsahuje stav závislý na prostředí**
- **neprovádí síťovou komunikaci**
- **nepřistupuje k uživatelskému rozhraní**

Vstup → výpočet → výstup  
Vždy stejným způsobem.

---

## 2. Co do jádra patří

Do jádra patří výhradně:

- výpočetní logika
- časové a pracovní modely
- validační pravidla vstupů
- definice výstupních struktur
- testovací scénáře

Jádro smí pracovat pouze s daty,
nikoliv s uživatelským kontextem.

---

## 3. Co do jádra NIKDY patřit nesmí

Do jádra nesmí být nikdy přidáno:

- uživatelské rozhraní
- databázové konektory
- cloudové služby
- autentizace
- personalizace
- optimalizace „pro pohodlí“

Jakýkoliv pokus o přidání těchto prvků
je považován za porušení architektury.

---

## 4. Determinismus jako základní zásada

Jádro musí být deterministické.

To znamená:

- stejný vstup → stejný výstup
- žádné skryté závislosti
- žádné náhodné chování
- žádné tiché opravy dat

Jakákoli změna chování jádra musí být:
- explicitní
- verzovaná
- testovatelná

---

## 5. Vztah k ostatním částem projektu

Jádro:

- **neví o aplikacích**
- **neví o platformě**
- **neví o uživateli**

Aplikace, UI a integrace:
- jádro používají
- ale neřídí

Tato hranice je záměrná a nevyjednatelná.
