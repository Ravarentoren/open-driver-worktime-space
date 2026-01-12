<!--
odws:
  layer: normative
  domain: core
  topic: trace-log-and-deterministic-audit-trail
  version: 1.0
  status: stable
  language: cs
  license: Apache-2.0
-->

# Trasovací log a deterministická auditní stopa
## Normativní vymezení sledovatelnosti v ODWS

Tento dokument **normativně definuje trasovací log**
a deterministickou auditní stopu
v rámci Open Driver Worktime Space (ODWS).

Jeho účelem je:
- zaručit úplnou sledovatelnost od záznamů až po časovou osu,
- umožnit forenzní rekonstrukci všech rozhodnutí,
- zajistit, že žádný výpočet nebude neprůhledný ani nevratný.

Tento dokument je **normativní**.

Používá se ve spojení s:
- *ODWS Documentation Layers*
- *ODWS-CE Core – Normativní definice*
- *Identita záznamu*
- *Identita události*
- *Řazení událostí a shodné časové značky*
- *Integrita časové osy*

---

## 1. Sledovatelnost jako základní požadavek

Normativně:

- každý odvozený artefakt MUSÍ být dohledatelný,
- žádný výpočetní krok NESMÍ být neprůhledný,
- žádné rozhodnutí NESMÍ být nevratné.

Pokud výsledek nelze zpětně vysledovat,
**je v ODWS neplatný**.

---

## 2. Definice trasovacího logu

Normativně:

- **trasovací log** je neměnná struktura typu append-only,
- zaznamenává **jakým způsobem** byly výstupy odvozeny,
- neinterpretuje realitu.

Trasovací log zaznamenává:
- vstupní záznamy,
- odvozené události,
- použitá pravidla,
- rozhodnutí o řazení a řešení konfliktů,
- čas výpočtu (nikoli čas reality).

---

## 3. Trasovací log ≠ časová osa

Normativně:

- trasovací log **není časová osa**,
- časová osa reprezentuje realitu,
- trasovací log reprezentuje **historii výpočtu**.

Trasovací log vysvětluje,
*proč* časová osa vypadá tak, jak vypadá.

---

## 4. Povinné položky trasovacího logu

Každý výpočetní krok MUSÍ v trasovacím logu obsahovat:

- identifikátory vstupů (záznamy),
- identifikátory výstupů (události, přechody),
- identifikátory použitých pravidel,
- rozhodnutí o řazení nebo řešení konfliktů,
- čas provedení výpočtu.

---

## 5. Deterministická auditní stopa

Normativně:

- auditní stopa MUSÍ být deterministická,
- shodné vstupy MUSÍ produkovat:
  - shodné časové osy,
  - shodné trasovací logy.

Nedeterministické trasování je **zakázáno**.

---

## 6. Zákaz tichých rozhodnutí

Normativně je **zakázáno**:

- implicitní řešení konfliktů,
- heuristické odhady,
- tiché potlačení dat,
- nezdokumentované opravy.

Každé rozhodnutí MUSÍ být:
- explicitní,
- zaznamenané,
- reprodukovatelné.

---

## 7. Opravy a přepočet

Normativně:

- opravy přidávají nové položky do trasovacího logu,
- předchozí záznamy zůstávají zachovány,
- přepočet MUSÍ vytvořit novou sekvenci trasování.

Historie se **nikdy nepřepisuje**.

---

## 8. Nezávislost trasovacího logu na interpretaci

Normativně:

- trasovací log neobsahuje:
  - právní význam,
  - mzdovou interpretaci,
  - hodnocení viny nebo souladu s předpisy.

Zaznamenává *co se stalo ve výpočtu*,
nikoli *co to znamená*.

---

## 9. Vztah k auditu a kontrole

Normativně:

- audity trasovací log čtou,
- audity jej NESMÍ měnit,
- trasovací log je dostatečný pro forenzní rekonstrukci.

Trasovací log nahrazuje:
- vysvětlování,
- domněnky,
- lidskou paměť.

---

## 10. Normativní shrnutí

V ODWS:

- nic se neděje bez stopy,
- nic se neodvozuje bez vysvětlení,
- determinismus je povinný,
- historie je pouze přidávací,
- realita se nikdy nepřepisuje.

Pokud výsledek nelze krok za krokem vysvětlit,
**do core nepatří**.
