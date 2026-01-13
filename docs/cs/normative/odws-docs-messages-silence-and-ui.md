<!--
odws:
  layer: normative
  domain: documentation
  topic: messages-silence-and-ui
  version: 1.0
  status: stable
  language: cs
  license: Apache-2.0
-->





# 📘 ODWS Docs – Hlášky, ticho a komunikace s uživatelem
Normativní dokument


## 1. Účel tohoto dokumentu

Tento dokument normativně definuje:

- význam a použití všech hlášek ODWS docs,

- pojem a chování ticha,

- vztah mezi hláškami, tichem a očekáváním uživatele,

- závazný seznam klíčů hlášek, které musí být konzistentně implementovány ve všech jazykových knihovnách (`scripts/lang/*.sh`).

Tento dokument je jediným autoritativním zdrojem významu hlášek.


## 2. Základní principy

- Hláška ≠ text → hláška je smlouva

- Ticho ≠ prázdno → ticho je stav

- Uživatel musí vždy vědět, co se děje

- Neexistují „dočasné“ ani „nahodilé“ hlášky


## 3. Ticho

### 3.1 Definice

Ticho je platný výstup systému pouze tehdy, pokud:

- bylo výslovně oznámeno,

- odpovídá provoznímu kontextu,

- neporušuje očekávání uživatele.

### 3.2 Typy ticha (normativní)

Typ a význam

- SILENCE_WORKING  
  Probíhá práce a uživatel o tom ví

- SILENCE_FINAL  
  Proces byl úspěšně dokončen

- SILENCE_ANNOUNCED  
  Ticho bylo oznámeno předem

- SILENCE_INVALID  
  Uživatel očekává odezvu → návrhová chyba


## 4. UI – Struktura a navigace

### 4.1 Titulky a menu

Klíč a význam

- TXT_UI_TITLE_MAIN  
  Hlavní název aplikace

- TXT_UI_MENU_1–TXT_UI_MENU_5  
  Položky menu

- TXT_UI_MENU_LANGUAGE  
  Volba jazyka

- TXT_UI_MENU_DRY_RUN  
  Přepínač DRY-RUN

- TXT_UI_MENU_EXIT  
  Ukončení aplikace


### 4.2 Výzvy (prompty)

Klíč a význam

- TXT_UI_PROMPT_SELECT  
  Výzva k výběru

- TXT_UI_PROMPT_CONFIRM  
  Výzva k potvrzení

- TXT_UI_PROMPT_CONTINUE  
  Výzva k pokračování

- TXT_UI_PROMPT_BACK  
  Návrat zpět

- TXT_UI_PROMPT_CANCEL  
  Zrušení operace

V těchto stavech je ticho zakázáno.


## 5. Stavové systémové hlášky

Klíč a význam

- TXT_SYS_STARTING  
  Systém se spouští

- TXT_SYS_FINISHED  
  Systém byl úspěšně dokončen

- TXT_SYS_ABORTED_BY_USER  
  Operace byla zrušena uživatelem

- TXT_SYS_INTERRUPTED  
  Proces byl přerušen

- TXT_SYS_NOTHING_TO_DO  
  Není co dělat

- TXT_SYS_DRY_RUN_ENABLED  
  DRY-RUN zapnut

- TXT_SYS_DRY_RUN_DISABLED  
  DRY-RUN vypnut


## 6. Výsledky operací

### 6.1 Obecné výsledky

Klíč a význam

- TXT_RES_OK  
  Operace byla úspěšná

- TXT_RES_WARN  
  Dokončeno s varováním

- TXT_RES_ERROR  
  Došlo k chybě

- TXT_RES_PARTIAL  
  Částečný výsledek


### 6.2 Operace se soubory

Klíč a význam

- TXT_RES_FILE_CREATED  
  Soubor vytvořen

- TXT_RES_FILE_UPDATED  
  Soubor aktualizován

- TXT_RES_FILE_SKIPPED  
  Soubor přeskočen

- TXT_RES_FILE_MOVED  
  Soubor přesunut

- TXT_RES_FILE_REMOVED  
  Soubor odstraněn


## 7. Audity a kontroly

Klíč a význam

- TXT_AUDIT_START  
  Audit zahájen

- TXT_AUDIT_END  
  Audit dokončen

- TXT_AUDIT_OK  
  Audit v pořádku

- TXT_AUDIT_WARN  
  Audit s varováními

- TXT_AUDIT_ERROR  
  Audit s chybami


### 7.1 Audit překladů

Klíč a význam

- TXT_AUDIT_TRANSLATION_COMPLETE  
  Překlad kompletní

- TXT_AUDIT_TRANSLATION_MISSING  
  Překlad chybí

- TXT_AUDIT_TRANSLATION_OUTDATED  
  Překlad je zastaralý

- TXT_AUDIT_TRANSLATION_UNKNOWN  
  Neznámý stav překladu


## 8. Ochranné podmínky (guards)

Klíč a význam

- TXT_GUARD_NOT_REPO_ROOT  
  Nejedná se o kořen repozitáře

- TXT_GUARD_DOCS_DIR_MISSING  
  Chybí adresář docs

- TXT_GUARD_LANG_NOT_FOUND  
  Jazyk nenalezen

- TXT_GUARD_SCRIPT_NOT_EXECUTABLE  
  Skript není spustitelný

- TXT_GUARD_INVALID_ARGUMENT  
  Neplatný argument

- TXT_GUARD_UNSUPPORTED_MODE  
  Nepodporovaný režim


## 9. Režimy spuštění

Klíč a význam

- TXT_MODE_ALL  
  Režim: vše

- TXT_MODE_FOLDER  
  Režim: složka

- TXT_MODE_ONE  
  Režim: jeden

- TXT_MODE_INTERACTIVE  
  Interaktivní režim

- TXT_MODE_AUTOMATED  
  Automatizovaný režim


## 10. Práce s jazyky

Klíč a význam

- TXT_LANG_CURRENT  
  Aktuální jazyk

- TXT_LANG_SWITCHED  
  Jazyk přepnut

- TXT_LANG_FALLBACK_USED  
  Použit náhradní jazyk

- TXT_LANG_INVALID_SELECTION  
  Neplatný výběr

- TXT_LANG_AVAILABLE_LIST  
  Dostupné jazyky


## 11. DRY-RUN

Klíč a význam

- TXT_DRY_RUN_NOTICE  
  Oznámení DRY-RUN

- TXT_DRY_RUN_ACTION  
  Akce v režimu DRY-RUN

- TXT_DRY_RUN_NO_CHANGES  
  Nebyly provedeny žádné změny


## 12. Souhrn

Klíč a význam

- TXT_SUMMARY_TITLE  
  Nadpis souhrnu

- TXT_SUMMARY_OK_COUNT  
  Počet OK

- TXT_SUMMARY_WARN_COUNT  
  Počet varování

- TXT_SUMMARY_ERROR_COUNT  
  Počet chyb

- TXT_SUMMARY_EXIT_CODE  
  Návratový kód


## 13. Základní stavové hlášky

Klíč a význam

- TXT_WORKING  
  Pracuji. Ještě nejsem hotový.

- TXT_ABORTED_BY_USER  
  Zrušeno uživatelem

- TXT_NOTHING_TO_DO  
  Není co dělat

- TXT_DONE  
  Hotovo

- TXT_WAITING_FOR_INPUT  
  Čekám na vstup


## 14. Závěrečný princip

Ticho je informace.  
Hláška je odpovědnost.  
Význam nikdy nežije v kódu, ale v normě.
