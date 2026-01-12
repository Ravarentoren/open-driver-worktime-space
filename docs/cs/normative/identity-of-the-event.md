<!--
odws:
  layer: normative
  domain: core
  topic: identity-of-the-event
  version: 1.0
  status: draft
  language: cs
  license: Apache-2.0
-->

# Identita události
## Normativní definice atomární jednotky reality v ODWS

Tento dokument **normativně definuje pojem události**
jako nejmenší nedělitelnou jednotku reality
zpracovávanou jádrem ODWS-CE.

Jeho účelem je:
- vymezit, čím událost **je** a **není**
- zabránit agregaci, kompresi nebo sémantickému zkreslení reality
- vytvořit deterministický a auditovatelný základ veškerých výpočtů

Tento dokument je **normativní**.

Platí ve spojení s:
- *Dokumentační vrstvy ODWS*
- *ODWS-CE Core – normativní definice*
- *Identita času a pracovní doby*
- *Identita řidiče*
- *Identita prostředku*
- *Hranice terminologie ODWS*

---

## 1. Událost jako fakt reality

Normativně platí:

- **událost** je faktický výskyt v realitě
- událost **nastala, nebo nenastala**
- událost **není interpretací**
- událost **není závěrem**

Událost reprezentuje **to, co se stalo**, nikoli **co to znamená**.

---

## 2. Atomární povaha události

Normativně:

- událost je **atomární**
- událost NESMÍ být dále dělena
- událost NESMÍ být slučována s jinými událostmi

Pokud lze něco rozdělit na menší faktické části,
**nejde o jednu událost**.

---

## 3. Povinné vlastnosti události

Každá událost MUSÍ mít:

1. **Časový odkaz**
   - konkrétní časové razítko nebo interval
   - patřící do jediné spojité časové osy

2. **Stav reality**
   - práce nebo odpočinek
   - přesně jeden stav pro jednu událost

3. **Odkaz na člověka**
   - řidiče, kterému událost náleží

Událost MŮŽE dále obsahovat:
- odkaz na prostředek
- odkaz na místo
- odkaz na zdroj (zařízení, manuál, import)
- metadata pro trasovatelnost

---

## 4. Událost ≠ agregace časových úseků

Normativně zakázáno:

- reprezentovat více událostí jako jednu
- slučovat časové úseky do souhrnů
- předpočítávat délky trvání na úrovni událostí

Délky trvání:
- se **odvozují z událostí**
- nikdy nejsou **uloženy uvnitř událostí**

---

## 5. Událost ≠ interpretace

Událost NESMÍ obsahovat:

- právní kvalifikaci
- mzdové zařazení
- posouzení souladu s předpisy
- význam specifický pro zaměstnavatele

Veškerý význam náleží **navazujícím vrstvám**.

---

## 6. Událost ≠ zdroj záznamu

Normativně:

- **zdroj události** není samotná událost
- záznam z tachografu **není** událost
- manuální zadání **není** událost

Události jsou **odvozeny ze záznamů**, nejsou s nimi totožné.

Více záznamů MŮŽE popisovat:
- tutéž událost
- překrývající se realitu

Jádro převádí záznamy na události
**bez volby autority**.

---

## 7. Opravy událostí a integrita reality

Normativně:

- události se **nikdy nemažou**
- opravy vytvářejí **nové události**
- původní události zůstávají dohledatelné

Realita je chráněna:
- přidáváním,
- nikoli mazáním.

---

## 8. Požadavek determinismu

Při shodném vstupu reality:

- MUSÍ vzniknout stejná sada událostí
- pořadí MUSÍ být totožné
- struktura MUSÍ být reprodukovatelná

Identita události je předpokladem determinismu.

---

## 9. Vztah k ODWS-CE Core

Jádro ODWS-CE:

- pracuje výhradně s událostmi
- staví časové osy z událostí
- odvozuje výpočty pouze z událostí
- nikdy nepočítá přímo ze surových záznamů

Události jsou **jediným faktickým substrátem** jádra.

---

## 10. Normativní shrnutí

V ODWS:

- událost je atomární fakt reality
- události jsou časově, osobně a stavově vázané
- události se samy neinterpretují
- události nejsou záznamy ani závěry

Pokud se něco nestalo,
**nejde o událost**.

Pokud se něco stalo,
**musí to existovat jako událost**.
