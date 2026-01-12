<!--
odws:
  layer: normative
  domain: core
  topic: state-transition
  version: 1.0
  status: stable
  language: cs
  license: Apache-2.0
-->

# Přechod stavu
## Normativní vymezení změn stavu v ODWS

Tento dokument **normativně definuje přechody stavu**
v rámci Open Driver Worktime Space (ODWS).

Jeho účelem je:
- popsat, jak se realita mění v čase,
- zakázat implicitní a automatické změny stavu,
- vytvořit deterministický základ časové osy.

Tento dokument je **normativní**.

Používá se ve spojení s:
- *ODWS Documentation Layers*
- *ODWS-CE Core – Normativní definice*
- *Identita události*
- *Identita času a pracovní doby*
- *Identita řidiče*
- *ODWS Terminology Boundary*

---

## 1. Definice stavu

Normativně:

- **stav** je reálný stav řidiče
- existují pouze dva stavy:
  - **práce**
  - **odpočinek**
- v libovolném okamžiku existuje **právě jeden stav**

Stav je vlastností **reality**, nikoli zařízení.

---

## 2. Definice přechodu stavu

Normativně:

- **přechod stavu** je okamžik změny reálného stavu
- přechod je **událost**
- přechod nastává v konkrétním čase

Přechod:
- netrvá,
- nemá délku,
- pouze označuje změnu.

---

## 3. Zákaz implicitních přechodů

Normativně je **zakázáno**:

- automatické přepínání stavů
- předpokládané změny stavu
- odvozování změn stavu z:
  - vypnutí nebo zapnutí motoru
  - pohybu nebo stání vozidla
  - nastavení tachografu
  - absence záznamu
  - technických výchozích hodnot

**Pokud neexistuje událost přechodu, stav se nezměnil.**

---

## 4. Pravidlo kontinuity stavu

Normativně:

- mezi dvěma přechody stav **trvá**
- nejsou dovoleny mezery ani neznámé stavy
- realita je spojitá

---

## 5. Přechody se odvozují, nepředpokládají

Normativně:

- přechody se **odvozují z událostí**
- události se **odvozují ze záznamů**
- pořadí vrstev je pevné

Core:
- NESMÍ přechody vymýšlet
- NESMÍ hádat změny stavu
- MUSÍ být konzervativní

---

## 6. Konfliktní signály a záznamy

Normativně:

- konfliktní záznamy MOHOU existovat
- konflikty nepopírají realitu

Core MUSÍ:
- zachovat všechny záznamy,
- deterministicky odvozovat přechody,
- umožnit audit,
- nikdy konflikty nemaže.

---

## 7. Přechod ≠ právní nebo mzdový význam

Normativně:

- přechod stavu neznamená:
  - zákonnou přestávku,
  - splnění nebo porušení předpisu,
  - mzdový nárok,
  - sankci

Tyto významy patří do **interpretačních vrstev**.

---

## 8. Vztah k událostem a časové ose

Normativně platí tok:

záznamy → události → přechody stavu → časová osa

Jakýkoli jiný tok je **v ODWS nepřípustný**.

---

## 9. Normativní shrnutí

V ODWS:

- přechody stavu jsou explicitní události
- neexistují automatické změny stavu
- kontinuita stavu je povinná
- zařízení nemění realitu
- interpretace začíná až po časové ose

Pokud systém předpokládá přechod bez události,
**chybuje systém – ne realita**.
