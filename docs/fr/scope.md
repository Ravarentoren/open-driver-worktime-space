> ⚠ This file is auto-generated from docs/en/scope.md.
> Do not edit manually.

# Scope projektu ODWS

Tento dokument vymezuje rozsah projektu
Open Driver Worktime Space (ODWS).

Cílem je jasně definovat, co projekt řeší,
a stejně jasně, co řešit nebude.

---

## 1. Co projekt řeší

ODWS řeší výpočet a transparentní popis:

- pracovní doby řidiče
- časů započitatelných a nezapočitatelných do práce
- základních návazných nároků vyplývajících z odpracované doby

Projekt se soustředí na:

- **reálná provozní data**
- **deterministické výpočty**
- **offline-first použití**
- **auditovatelný a opakovatelný výsledek**

Výstupem systému je vždy:
- výsledek výpočtu
- vysvětlení, jak k němu systém dospěl
- identifikace použitého výkladového modelu

---

## 2. Co projekt záměrně neřeší

ODWS záměrně:

- nenahrazuje právní poradenství
- není autoritativním výkladem práva
- nerozhoduje spory
- nenese odpovědnost za konečné mzdové rozhodnutí
- nenahrazuje účetní ani mzdový software

Projekt:
- **počítá**
- **nevynucuje rozhodnutí**

---

## 3. První stabilní rozsah (Phase 1)

První stabilní fáze projektu se omezuje na:

- zpracování pracovního času řidiče
- základní časové kategorie (práce, pohotovost, odpočinek)
- lokální zpracování dat bez závislosti na cloudu
- referenční výstupy ve strojově čitelném formátu

V této fázi nejsou cílem:

- plné mzdové výpočty
- integrace do účetních systémů
- komplexní legislativní pokrytí
- automatizace státní komunikace

---

## 4. Zásada rozšiřování

Rozšíření rozsahu projektu je možné pouze:

- explicitním rozhodnutím
- s ohledem na zachování jednoduchosti
- bez narušení deterministického jádra

Každé rozšíření musí:
- být oddělitelné
- být volitelné
- nesmí narušit existující výpočty
