<!--
odws:
  layer: normative
  domain: core
  topic: event-ordering-and-equal-timestamps
  version: 1.0
  status: stable
  language: cs
  license: Apache-2.0
-->

# Řazení událostí a shodné časové značky
## Normativní vymezení deterministického řazení v ODWS

Tento dokument **normativně definuje způsob řazení událostí**
v rámci Open Driver Worktime Space (ODWS),
včetně situací, kdy více událostí sdílí stejnou časovou značku.

Jeho účelem je:
- zaručit deterministickou a reprodukovatelnou časovou osu,
- zabránit nejednoznačnosti způsobené shodnými nebo konfliktními časovými značkami,
- definovat striktní pravidla řazení nezávislá na pořadí přijetí záznamů.

Tento dokument je **normativní**.

Používá se ve spojení s:
- *ODWS Documentation Layers*
- *ODWS-CE Core – Normativní definice*
- *Identita události*
- *Přechod stavu*
- *Integrita časové osy*
- *Identita záznamu*

---

## 1. Povinnost řazení

Normativně:

- každá událost MUSÍ mít jednoznačně určené místo na časové ose
- žádné dvě události nesmí zůstat bez pořadí
- řazení je vlastností **časové osy**, nikoli záznamů

Pokud není pořadí určitelné,
**časová osa je neplatná**.

---

## 2. Časová značka jako primární klíč řazení

Normativně:

- časová značka události je **primárním klíčem řazení**
- dřívější čas → dřívější pozice na časové ose

Současně však platí:

- samotná časová značka **není dostatečná** pro zajištění determinismu

---

## 3. Shodné časové značky jsou přípustné

Normativně:

- více událostí MŮŽE mít stejnou časovou značku
- shodná časová značka **neznamená současnost významu**
- shodná časová značka **neslučuje události**

Každá událost zůstává:
- atomická,
- samostatná,
- nezávisle řazená.

---

## 4. Sekundární deterministická pravidla řazení

Pokud mají dvě nebo více událostí stejnou časovou značku,
ODWS-CE core MUSÍ použít deterministická pravidla rozlišení.

Pořadí se normativně určuje v následujícím pevném sledu:

1. **Priorita explicitního přechodu stavu**

   - **první přechod z odpočinku → práce**
     má přednost před pokračováním předchozího stavu

   - **poslední přechod z práce → odpočinek**
     má přednost před pokračováním předchozího stavu

   Explicitní přechod stavu má vždy přednost
   před implicitním trváním stavu.

---

2. **Priorita typu události**

   - události přechodu stavu
     mají přednost před všemi ostatními typy událostí

   Přechod stavu určuje strukturu časové osy
   a nesmí být potlačen jinou událostí.

---

3. **Jistota zdroje**

   - události odvozené z **explicitních záznamů**
     mají přednost před:
       - odvozenými událostmi,
       - opravnými nebo rekonstrukčními událostmi

   Jistější zdroj má přednost před méně jistým,
   nikoli na základě autority,
   ale na základě blízkosti k realitě.

---

4. **Stabilní interní řadicí klíč**

   - deterministický a reprodukovatelný interní identifikátor
   - nezávislý na pořadí vstupu záznamů
   - shodný pro shodné vstupy

   Tento klíč se použije pouze tehdy,
   pokud předchozí pravidla nerozhodnou pořadí.

---

## 5. Pořadí přijetí záznamů je irelevantní

Normativně:

- pořadí, ve kterém jsou záznamy přijaty,
  NESMÍ ovlivnit pořadí událostí
- opožděné nebo dodatečné záznamy
  MUSÍ být vloženy deterministicky

Časová osa se **rekonstruuje z reality**,
nikoli heuristicky doplňuje.

---

## 6. Zákaz implicitního slučování událostí

Normativně je zakázáno:

- slučování událostí kvůli shodným časům
- komprese více změn do jedné události
- předpoklad, že současnost znamená totožnost

Pokud došlo ke dvěma změnám,
**MUSÍ existovat dvě události**.

---

## 7. Konfliktní scénáře časových značek

Normativně:

- konfliktní časové značky MOHOU existovat
- konflikty časů nečiní události neplatnými

Core MUSÍ:
- zachovat všechny události,
- deterministicky je seřadit,
- zpřístupnit konflikty pro audit,
- nikdy neodstraňovat události kvůli nejednoznačnosti.

---

## 8. Požadavek determinismu

Pro shodné vstupní záznamy:

- pořadí událostí MUSÍ být shodné
- struktura časové osy MUSÍ být shodná
- shodné časové značky MUSÍ být řešeny totožně

Jakékoli nedeterministické řazení
**porušuje principy ODWS core**.

---

## 9. Vztah k integritě časové osy

Normativně:

- pravidla řazení jsou součástí integrity časové osy
- chybné řazení znamená porušení integrity

Pokud nelze pořadí vyřešit deterministicky,
**core MUSÍ explicitně selhat**.

---

## 10. Normativní shrnutí

V ODWS:

- každá událost má jednoznačné pořadí
- shodné časové značky jsou přípustné, nikdy však nejednoznačné
- řazení je deterministické a reprodukovatelné
- pořadí přijetí záznamů nehraje roli
- nejednoznačnost se odhaluje, nikoli skrývá

Pokud dvě implementace vytvoří z týchž vstupů
odlišné pořadí událostí,
**alespoň jedna z nich je chybná**.
