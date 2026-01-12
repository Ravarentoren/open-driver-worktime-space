<!--
odws:
  layer: normative
  domain: input
  topic: physical-and-technical-limits
  version: 1.0
  status: stable
  language: cs
  license: Apache-2.0
-->

# Fyzické a technické limity záznamových zařízení

## Normativní vymezení reality, zařízení a jejich vztahu

Tento dokument **normativně vymezuje fyzické a technické limity**
záznamových zařízení používaných v silniční dopravě,
zejména digitálních tachografů a karet řidiče.

Cílem dokumentu je:
- zabránit záměně zařízení s realitou,
- vymezit odpovědnost technických systémů,
- chránit reálný průběh práce před chybnými předpoklady.

---

## 1. Hmotná povaha zařízení

Normativně platí:

- **Digitální tachograf je hmotné technické zařízení**
- **Karta řidiče je hmotný technický nosič identity**
- Obě tyto entity:
  - existují fyzicky,
  - jsou tvořeny materiálními komponentami,
  - podléhají fyzikálním omezením reality

Tato omezení nelze obejít právním výkladem, administrativním požadavkem
ani vnitřním předpisem zaměstnavatele.

---

## 2. Vazba tachografu na vozidlo

Normativně platí:

- tachograf je **pevně a výlučně vázán k jednomu konkrétnímu vozidlu**
- tachograf **nemůže zaznamenávat realitu mimo toto vozidlo**
- tachograf **neexistuje bez vozidla**, ke kterému je instalován

Z toho vyplývá, že:

- realita probíhající mimo vozidlo
  **nemůže být tachografem zaznamenána**
- absence záznamu **není důkazem absence reality**

---

## 3. Vazba karty řidiče na osobu

Normativně platí:

- karta řidiče je **pevně vázána na jednu konkrétní osobu**
- karta sama o sobě **nezaznamenává realitu**
- karta funguje **pouze ve spojení s kompatibilním zařízením**

Z toho vyplývá, že:

- bez fyzického přístupu k tachografu
  **nelze vytvářet technické záznamy**
- realita existující bez zařízení
  **nemůže být zaznamenána v reálném čase**

---

## 4. Technická konfigurace není definicí reality

Kombinace:
- osoba
- karta řidiče
- tachograf
- vozidlo

představuje **technickou konfiguraci**, nikoliv realitu samotnou.

Normativně platí:

- technická konfigurace **omezuje možnosti záznamu**
- technická konfigurace **neurčuje pravdivost reality**
- realita **nezaniká mimo technickou konfiguraci**

---

## 5. Nevyhnutelná technická slepá místa

V důsledku fyzických a technických omezení existují
**nevyhnutelná slepá místa záznamu**, zejména:

- práce mimo vozidlo
- přesuny mezi vozidly
- multimodální přeprava (vlak, loď, letadlo)
- čekání bez přístupu k tachografu
- administrativní a organizační činnosti
- období mezi zaměstnáními

Tato slepá místa:

- **nejsou porušením povinností**
- **nejsou selháním řidiče**
- jsou přímým důsledkem konstrukce zařízení

---

## 6. Zásadní oddělení reality a záznamu

Normativně platí:

- **realita existuje nezávisle na zařízení**
- zařízení zaznamenává **pouze část reality**
- nezaznamenaná realita **neztrácí platnost**
- záznam **není nadřazen realitě**

Zařízení je zdrojem signálů,
nikoliv nositelem pravdy.

---

## 7. Vazba na ODWS-CE core

Z výše uvedeného důvodu ODWS-CE core:

- neuděluje implicitní autoritu žádnému zařízení
- odděluje realitu od technického záznamu
- umožňuje reprezentaci reality:
  - zaznamenané se zpožděním,
  - zaznamenané manuálně,
  - zaznamenané mimo zařízení

Cílem není popření technických záznamů,
ale **ochrana reality před jejich limity**.

---

## 8. Normativní shrnutí

- tachograf je fyzické zařízení s fyzickými limity
- karta řidiče je fyzický nosič identity
- realita řidiče těmto limitům nepodléhá
- absence záznamu není důkazem absence reality

Pokud zařízení realitu nezaznamená,
**ODWS ji nevymýšlí**.

Pokud realita existuje,
**ODWS ji nepopírá**.
