<!--
odws:
  layer: normative
  domain: core
  topic: timeline-integrity
  version: 1.0
  status: stable
  language: cs
  license: Apache-2.0
-->

# Integrita časové osy
## Normativní vymezení konzistence časové osy v ODWS

Tento dokument **normativně definuje pravidla integrity časové osy**
v rámci Open Driver Worktime Space (ODWS).

Jeho účelem je:
- chránit časovou osu před fragmentací, mezerami a překryvy,
- zajistit kontinuitu reprezentace reality,
- stanovit nepřekročitelné invarianty pro všechny navazující výpočty.

Tento dokument je **normativní**.

Používá se ve spojení s:
- *ODWS Documentation Layers*
- *ODWS-CE Core – Normativní definice*
- *Identita času a pracovní doby*
- *Identita události*
- *Přechod stavu*

---

## 1. Princip jediné časové osy

Normativně:

- pro každého řidiče existuje **právě jedna časová osa**
- časová osa reprezentuje **spojitou realitu**
- časová osa **nikdy není pozastavena ani resetována**

Neexistují:
- paralelní časové osy,
- alternativní větve,
- skryté časové osy.

---

## 2. Požadavek kontinuity

Normativně:

- časová osa MUSÍ být spojitá
- nejsou dovoleny žádné mezery
- nejsou dovoleny žádné nedefinované intervaly

Pokud realita existuje,  
**existuje na časové ose**.

---

## 3. Zákaz časových překryvů

Normativně:

- překrývající se časové intervaly jsou **zakázány**
- řidič nemůže být ve dvou stavech současně
- řidič nemůže mít paralelní události

Pokud dva záznamy naznačují překryv,
řeší se konflikt **na úrovni záznamů**,  
nikoli rozdělením časové osy.

---

## 4. Zákaz odstraňování času

Normativně je **zakázáno**:

- mazání časových intervalů
- ignorování „nepohodlných“ období
- komprese času z důvodu interpretace
- odstraňování přestávek, čekání nebo přechodů

Čas, který existoval,  
**musí zůstat reprezentován**.

---

## 5. Zákaz duplikace času

Normativně:

- čas NESMÍ být duplikován
- stejný okamžik NESMÍ existovat dvakrát
- agregace NESMÍ vytvářet nový čas

Interpretace může čas **počítat**,  
ale NESMÍ ho **násobit**.

---

## 6. Nezávislost časové osy na interpretaci

Normativně:

- časová osa je vytvářena **před interpretací**
- právní, mzdová nebo kontrolní logika:
  - časovou osu čte,
  - ale neupravuje ji

Žádná navazující vrstva:
- nesmí měnit strukturu časové osy,
- nesmí vkládat nebo odebírat čas,
- nesmí narušit kontinuitu.

---

## 7. Opravy zachovávají integritu časové osy

Normativně:

- opravy přidávají informace
- opravy NESMÍ porušit kontinuitu
- opravy NESMÍ měnit existenci minulého času

Realita se opravuje **přidáním**,  
nikoli přepisem.

---

## 8. Pravidlo deterministické konstrukce

Pro shodné vstupní záznamy:

- časová osa MUSÍ být shodná
- pořadí MUSÍ být reprodukovatelné
- pravidla integrity MUSÍ být vždy dodržena

Integrita časové osy je **deterministická**, nikoli heuristická.

---

## 9. Vztah k ODWS-CE Core

ODWS-CE core:

- vytváří časovou osu z událostí,
- vynucuje všechna pravidla integrity,
- odmítá výstupy porušující kontinuitu,
- poskytuje stabilní základ pro všechny výpočty.

Pokud nelze integritu zachovat,  
**core MUSÍ selhat explicitně**.

---

## 10. Normativní shrnutí

V ODWS:

- časová osa je jediná a spojitá
- čas se nepřekrývá, nemizí ani se nemnoží
- integrita předchází interpretaci
- opravy nepřepisují realitu

Pokud výpočet vyžaduje porušení časové osy,  
**výpočet je neplatný**.
