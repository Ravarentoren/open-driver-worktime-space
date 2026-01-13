<!--
odws:
  layer: normative
  domain: documentation
  topic: messages-silence-and-ui
  version: 1.0
  status: stable
  language: en
  license: Apache-2.0
-->





# 📘 ODWS Docs – Messages, Silence, and User Communication
Normative Document


## 1. Purpose of This Document

This document normatively defines:

- the meaning and usage of all ODWS doc messages,

- the concept and behavior of silence,

- the relationship between messages, silence, and user expectations,

- the binding list of message keys that must be implemented consistently in all language libraries (`scripts/lang/*.sh`).

This document is the single authoritative source for message semantics.


## 2. Fundamental Principles

- A message ≠ text → a message is a contract

- Silence ≠ emptiness → silence is a state

- The user must always know what is happening

- There are no “temporary” or “incidental” messages


## 3. Silence

### 3.1 Definition

Silence is a valid system output if and only if:

- it has been explicitly announced,

- it matches the operational context,

- it does not violate user expectations.

### 3.2 Types of Silence (Normative)

Type and Meaning

- SILENCE_WORKING
  Work is in progress and the user has been informed
  
- SILENCE_FINAL
  Process finished correctly
  
- SILENCE_ANNOUNCED
  Silence was announced in advance
  
- SILENCE_INVALID
  User expects feedback → design error


## 4. UI – Structure and Navigation

### 4.1 Titles and Menus

Key and Meaning

- TXT_UI_TITLE_MAIN
  Main application title
  
- TXT_UI_MENU_1–TXT_UI_MENU_5
  Menu entries
  
- TXT_UI_MENU_LANGUAGE
  Language selection
  
- TXT_UI_MENU_DRY_RUN
  DRY-RUN toggle
  
- TXT_UI_MENU_EXIT
  Exit application

  
### 4.2 Prompts

Key and Meaning

- TXT_UI_PROMPT_SELECT
  Selection prompt
  
- TXT_UI_PROMPT_CONFIRM
  Confirmation prompt
  
- TXT_UI_PROMPT_CONTINUE
  Continue prompt
  
- TXT_UI_PROMPT_BACK
  Back / return
  
- TXT_UI_PROMPT_CANCEL
  Cancel operation
  
In these states, silence is forbidden.


## 5. System State Messages

Key and Meaning

- TXT_SYS_STARTING
  System is starting
  
- TXT_SYS_FINISHED
  System finished successfully
  
- TXT_SYS_ABORTED_BY_USER
  Operation aborted by user
  
- TXT_SYS_INTERRUPTED
  Process interrupted
  
- TXT_SYS_NOTHING_TO_DO
  No action required
  
- TXT_SYS_DRY_RUN_ENABLED
  DRY-RUN enabled
  
- TXT_SYS_DRY_RUN_DISABLED
  DRY-RUN disabled


## 6. Operation Results

### 6.1 General Results

Key and Meaning

- TXT_RES_OK
  Operation successful
  
- TXT_RES_WARN
  Completed with warnings
  
- TXT_RES_ERROR
  Error occurred
  
- TXT_RES_PARTIAL
  Partial result

  
### 6.2 File Operations

Key and Meaning

- TXT_RES_FILE_CREATED
  File created
  
- TXT_RES_FILE_UPDATED
  File updated
  
- TXT_RES_FILE_SKIPPED
  File skipped
  
- TXT_RES_FILE_MOVED
  File moved
  
- TXT_RES_FILE_REMOVED
  File removed


## 7. Audit and Checks

Key and Meaning

- TXT_AUDIT_START
  Audit started

- TXT_AUDIT_END
  Audit finished

- TXT_AUDIT_OK
  Audit successful

- TXT_AUDIT_WARN
  Audit warnings

- TXT_AUDIT_ERROR
  Audit errors


### 7.1 Translation Audit

Key and Meaning

- TXT_AUDIT_TRANSLATION_COMPLETE
  Translation complete

- TXT_AUDIT_TRANSLATION_MISSING
  Translation missing

- TXT_AUDIT_TRANSLATION_OUTDATED
  Translation outdated

- TXT_AUDIT_TRANSLATION_UNKNOWN
  Unknown translation state


## 8. Guard Conditions

Key and Meaning

- TXT_GUARD_NOT_REPO_ROOT
  Not repository root

- TXT_GUARD_DOCS_DIR_MISSING
  Docs directory missing

- TXT_GUARD_LANG_NOT_FOUND
  Language not found

- TXT_GUARD_SCRIPT_NOT_EXECUTABLE
  Script not executable

- TXT_GUARD_INVALID_ARGUMENT
  Invalid argument

- TXT_GUARD_UNSUPPORTED_MODE
  Unsupported mode


## 9. Execution Modes

Key and Meaning

- TXT_MODE_ALL
  Mode: all

- TXT_MODE_FOLDER
  Mode: folder

- TXT_MODE_ONE
  Mode: single

- TXT_MODE_INTERACTIVE
  Interactive mode

- TXT_MODE_AUTOMATED
  Automated mode


## 10. Language Handling

Key and Meaning

- TXT_LANG_CURRENT
  Current language

- TXT_LANG_SWITCHED
  Language switched

- TXT_LANG_FALLBACK_USED
  Fallback language used

- TXT_LANG_INVALID_SELECTION
  Invalid selection

- TXT_LANG_AVAILABLE_LIST
  Available languages


## 11. DRY-RUN

Key and Meaning

- TXT_DRY_RUN_NOTICE
  DRY-RUN notice

- TXT_DRY_RUN_ACTION
  DRY-RUN action

- TXT_DRY_RUN_NO_CHANGES
  No changes applied


## 12. Summary

Key and Meaning

- TXT_SUMMARY_TITLE
  Summary title

- TXT_SUMMARY_OK_COUNT
  OK count

- TXT_SUMMARY_WARN_COUNT
  Warning count

- TXT_SUMMARY_ERROR_COUNT
  Error count

- TXT_SUMMARY_EXIT_CODE
  Exit code


## 13. Core State Messages

Key and Meaning

- TXT_WORKING
  Working. Not finished yet.
  
- TXT_ABORTED_BY_USER
  Aborted by user

- TXT_NOTHING_TO_DO
  Nothing to do

- TXT_DONE
  Done

- TXT_WAITING_FOR_INPUT
  Waiting for input


## 14. Final Principle

Silence is information.
A message is responsibility.
Meaning never lives in code, but in the norm.
