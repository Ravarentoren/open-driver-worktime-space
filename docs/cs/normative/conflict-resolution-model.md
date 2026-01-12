<!--
odws:
  layer: normative
  domain: core
  topic: conflict-resolution-model
  version: 1.0
  status: stable
  language: cs
  license: Apache-2.0
-->

# Model řešení konfliktů
## Normativní vymezení řešení konfliktů v ODWS

Tento dokument **normativně definuje identifikaci a řešení konfliktů**
v rámci Open Driver Worktime Space (ODWS).

Jeho účelem je:
- vymezit, co konflikt **je** a **není**
- zakázat implicitní a heuristické řešení
- stanovit deterministická a auditovatelná pravidla řešení

Tento dokument je **normativní**.

Používá se ve spojení s:
- *ODWS Documentation Layers*
- *ODWS-CE Core – Normativní definice*
- *Identita záznamu*
- *Identita události*
- *Přechod stavu*
- *Řazení událostí a shodné časové značky*
- *Integrita časové osy*
- *Trasovací log a deterministická auditní stopa*

---

## 1. Definice konfliktu

Normativně:

**Konflikt** existuje, pokud:
- dva nebo více záznamů
- se vztahují ke stejnému časovému úseku
- a tvrdí **vzájemně nekompatibilní realitu**

Typické příklady:
- práce vs. odpočinek ve stejném čase
- více přechodů stavu v jednom okamžiku
- překryv událostí porušující kontinuitu časové osy

Konflikt je **vlastnost informací**,
nikoli selhání reality.

---

## 2. Co konflikt není

Normativně:

Za konflikt se **nepovažuje**:
- chybějící záznam
- opožděný záznam
- manuální záznam
- záznam bez přístupu k zařízení
- záznam mimo vozidlo

Absence nebo zpoždění záznamu **není konfliktem**.

---

## 3. Zákaz implicitního řešení konfliktů

Normativně je **zakázáno**:

- tiché přepisování záznamů
- automatické upřednostňování zařízení
- heuristické nebo pravděpodobnostní odhady
- mazání konfliktních vstupů

**Každý konflikt MUSÍ být řešen explicitně.**

---

## 4. Zásady řešení konfliktů

Řešení konfliktu MUSÍ:

1. zachovat všechny vstupy  
2. být deterministické  
3. být plně trasovatelné  
4. být reprodukovatelné  
5. být auditovatelné pomocí trasovacího logu  

---

## 5. Povolené metody řešení konfliktů

Normativně jsou povoleny pouze tyto metody:

### 5.1 Odvození událostí bez ztráty vstupů

- všechny konfliktní záznamy zůstávají zachovány
- core odvozuje konzervativní výsledek
- žádný záznam se nepotlačuje

### 5.2 Řešení na úrovni událostí

- konflikty se řeší při odvozování událostí
- záznamy se nikdy neupravují ani nemažou

### 5.3 Explicitní pravidlové řešení

Použít lze pouze pravidla definovaná v:
- *Řazení událostí a shodné časové značky*
- *Přechod stavu*
- *Integrita časové osy*

Jiná pravidla nejsou povolena.

---

## 6. Konflikt ≠ chyba

Normativně:

- konflikt **není porušení**
- konflikt **není vina řidiče**
- konflikt **není technická chyba systému**

Konflikt je **stav informace**, nikoli hodnocení.

---

## 7. Povinná sledovatelnost konfliktu

Každý konflikt MUSÍ:
- být zaznamenán v trasovacím logu
- mít jednoznačný identifikátor
- obsahovat použité rozhodovací pravidlo
- být plně rekonstruovatelný při auditu

---

## 8. Neřešitelný konflikt

Pokud:
- konflikt nelze deterministicky vyřešit
- bez porušení integrity časové osy

Pak:

> **ODWS-CE core MUSÍ explicitně selhat**

Explicitní selhání je **správné chování**.

---

## 9. Normativní shrnutí

V ODWS:

- konflikty jsou očekávané
- vstupy se nikdy nemažou
- realita se nehádá
- rozhodnutí jsou explicitní
- determinismus je povinný
- selhání je lepší než falešná jistota

Pokud řešení konfliktu vyžaduje porušení časové osy,
**řešení je neplatné**.
