# Pracovní den řidiče – jádrový datový model (Workday)

Tento dokument definuje **jádrový datový model pracovního dne řidiče**
v rámci projektu Open Driver Worktime Space (ODWS).

Model popisuje výhradně **reálně existující fakta práce**.
Neobsahuje ekonomické, mzdové ani právní interpretace.

Slouží jako vstup pro deterministické výpočty v jádru systému.

---

## 1. Základní principy

Jádrový model pracovního dne:

- popisuje **co se skutečně dělo**
- odděluje realitu od jejího výkladu
- je nezávislý na mzdových a právních konstruktech
- je použitelný napříč státy a systémy

Model je navržen tak, aby:
- byl dlouhodobě udržitelný
- byl auditovatelný
- umožňoval různé výkladové nadstavby
  bez zkreslení vstupních dat

---

## 2. Identita pracovního dne

Každý pracovní den MUSÍ být jednoznačně identifikovatelný.

Minimální identita zahrnuje:

- datum pracovního dne
- časové pásmo
- lokální anonymní identifikátor řidiče

Identita slouží výhradně
k jednoznačnému určení záznamu
a nemá právní ani osobní význam.

---

## 3. Časové úseky práce

Pracovní den je tvořen **posloupností časových úseků**.

Každý časový úsek má:

- čas začátku
- čas konce
- typ činnosti
- stát výkonu práce

Časové úseky se nesmí překrývat
a musí tvořit souvislou časovou osu dne.

---

## 4. Typy činností (jádrové)

Jádro ODWS pracuje výhradně
s následujícími typy činností:

- **jízda**
- **práce**
- **odpočinek**

Tyto typy popisují **reálný fyzický stav řidiče**
a jsou považovány za základní fakta pracovního dne.

Žádné další typy činností
nejsou v jádru přípustné.

---

## 5. Geografický kontext práce

Každý časový úsek MUSÍ být přiřazen
ke konkrétnímu státu výkonu práce.

Změna státu:

- je evidována jako časová událost
- není považována za činnost
- slouží k určení rozsahu práce
  vykonané na jednotlivých správních územích

Geografický kontext je považován
za **jádrový fakt pracovního dne**
vyplývající z evropského právního rámce.

---

## 6. Zdroje dat

Záznam pracovního dne může vzniknout z různých zdrojů:

- digitální tachograf
- ruční zadání
- import externího souboru

Zdroj dat:

- je evidován pro auditní účely
- nemá vliv na výpočet
- neslouží k hodnocení správnosti záznamu

---

## 7. Výslovně vyloučené pojmy

Jádrový model ZÁMĚRNĚ NEOBSAHUJE pojmy:

- pohotovost
- jiná činnost

Tyto pojmy nejsou považovány
za popis reality práce řidiče,
ale za technické nebo ekonomicko-právní konstrukty.

Mohou být případně **odvozeny až v nadstavbových vrstvách**
na základě jádrových faktů,
nikoliv součástí tohoto modelu.

---

## 8. Rozšiřitelnost modelu

Rozšíření modelu je možné pouze:

- přidáním nových nadstavbových struktur
- bez změny významu jádrových dat
- bez narušení determinismu výpočtů

Jádrový model musí zůstat stabilní,
i pokud se změní výklad, právo nebo ekonomické podmínky.
