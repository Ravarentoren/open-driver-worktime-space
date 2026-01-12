<!--
odws:
  layer: normative
  domain: core
  topic: identity-of-the-record
  version: 1.0
  status: stable
  language: cs
  license: Apache-2.0
-->

# Identita záznamu
## Normativní vymezení záznamů v ODWS

Tento dokument **normativně definuje identitu záznamu**
v rámci Open Driver Worktime Space (ODWS).

Jeho účelem je:
- jasně oddělit **záznam** od **události** a **reality**
- zakázat považování záznamů za autoritativní pravdu
- definovat deterministické zacházení s neúplnými, opožděnými a konfliktními záznamy

Tento dokument je **normativní**.

Používá se ve spojení s:
- *ODWS Documentation Layers*
- *ODWS-CE Core – Normativní definice*
- *Identita události*
- *Identita času a pracovní doby*
- *Fyzické a technické limity záznamových zařízení*
- *ODWS Terminology Boundary*

---

## 1. Záznam jako technický artefakt

Normativně platí:

- **záznam** je technický nebo manuální artefakt
- záznam je **pokus o zachycení reality**
- záznam **není realita sama**

Záznam existuje proto, že:
- zařízení něco zaznamenalo, nebo
- člověk něco zadal

Záznam **neexistuje proto**, že by realita potřebovala povolení.

---

## 2. Záznam ≠ událost

Normativně:

- záznam **není událost**
- událost je **odvozena ze záznamů**
- záznamy jsou vstupy, události jsou výsledek

Proto:

- více záznamů MŮŽE popisovat jednu událost
- jeden záznam MŮŽE popisovat více možných událostí
- absence záznamu **neznamená absenci události**

---

## 3. Záznam ≠ pravda

Normativně:

- záznamy **nejsou autoritou**
- záznamy mohou být:
  - neúplné
  - opožděné
  - nepřesné
  - rozporné
- pravda není dána certifikací ani typem zařízení

Žádný záznam nemá přednost na základě:
- certifikace
- původu
- požadavku zaměstnavatele
- administrativního pohodlí

---

## 4. Zdroje záznamů

Záznamy MOHOU pocházet z:
- tachografů
- karet řidiče
- manuálních zadání
- importů z externích systémů
- administrativních a organizačních zdrojů

Všechny záznamy:
- jsou zpracovávány jednotně
- podléhají stejným pravidlům
- nepřebíjejí realitu

---

## 5. Opožděné a zpětné záznamy

Normativně:

- opožděné zaznamenání je **běžnou vlastností reality**
- zpětné záznamy jsou **legitimní**
- čas záznamu ≠ čas události

ODWS-CE core:
- MUSÍ akceptovat opožděné záznamy
- MUSÍ zachovat původní časové značky
- NESMÍ měnit čas kvůli zpoždění záznamu

---

## 6. Konfliktní záznamy

Normativně:

- konfliktní záznamy MOHOU existovat
- konflikty se řeší pomocí:
  - sledovatelnosti,
  - pořadí,
  - explicitních oprav
- konflikty NESMÍ vést ke ztrátě dat

Core:
- MUSÍ zachovat všechny konfliktní záznamy
- MUSÍ deterministicky odvozovat události
- MUSÍ umožnit audit řešení konfliktů

---

## 7. Opravy záznamů

Normativně:

- záznamy se **nikdy nemažou**
- opravy vytvářejí **nové záznamy**
- původní záznamy zůstávají dohledatelné

Mazání záznamů je **zakázáno**.

---

## 8. Záznam ≠ právní nebo mzdové tvrzení

Normativně:

- záznamy neurčují:
  - legalitu
  - dodržení předpisů
  - mzdový nárok
- tyto významy patří do **interpretačních vrstev**

ODWS-CE core:
- záznamy neposuzuje
- neřeší compliance
- nepočítá mzdy

---

## 9. Vztah k ODWS-CE Core

ODWS-CE core:

- přijímá záznamy
- odvozuje z nich události
- vytváří spojitou časovou osu
- zachovává determinismus a auditovatelnost

Záznamy jsou **vstupy**, nikoli závěry.

---

## 10. Normativní shrnutí

V ODWS:

- záznamy jsou artefakty, ne realita
- události se odvozují, nepředpokládají
- absence záznamu není absence reality
- konflikty se zachovávají, nezahlazují
- realita je chráněna před autoritou záznamů

Pokud záznam odporuje realitě,
**zpochybňuje se záznam – ne realita**.
