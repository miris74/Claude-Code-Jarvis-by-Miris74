# Codex Prompt Template: Refactor

Use when: Improving structure without changing behavior.

```
TASK:
  Refactor [file path or module name].
  Goal: [reduce size / extract utilities / remove duplication / improve readability]

EXPECTED OUTCOME:
  - Same external behavior (all existing tests pass)
  - [Specific structural goal, e.g. "file under 400 lines"]
  - [Specific structural goal, e.g. "no function over 30 lines"]

CONTEXT:
  Tech stack: [language / framework]
  Current problem:
    - [e.g. "utils.ts is 1200 lines, hard to navigate"]
    - [e.g. "duplicated validation logic in 3 places"]
  Files involved:
    - [path]: [current role]
  Tests covering this code: [path or "none"]

CONSTRAINTS:
  - Do not change public API / exported signatures
  - Do not add new dependencies
  - Keep refactor minimal — only what's needed for the stated goal

MUST DO:
  - Split large files by feature/domain (not by type)
  - Extract pure functions to separate utility files
  - Maintain immutability throughout
  - Update import paths in all affected files

MUST NOT DO:
  - No behavior changes
  - No new abstractions beyond what's needed
  - No renaming that breaks imports elsewhere
  - No console.log

OUTPUT FORMAT:
  For each file: full file content
  List of all files created, modified, or deleted
  Confirm: "All existing exports preserved: YES/NO"
```
