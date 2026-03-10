# Codex Prompt Template: Implement

Use when: Adding new features, creating new files/modules.

```
TASK:
  Implement [feature name].
  Entry point: [file path or function signature]

EXPECTED OUTCOME:
  - [Specific behavior 1]
  - [Specific behavior 2]
  - All existing tests pass

CONTEXT:
  Tech stack: [language / framework / runtime]
  Relevant files:
    - [path]: [what it does]
    - [path]: [what it does]
  Existing patterns to follow:
    - [pattern name]: [brief description or file reference]

CONSTRAINTS:
  - Functions: max 50 lines
  - Files: max 800 lines
  - No new dependencies without justification
  - Follow existing folder structure

MUST DO:
  - Immutable patterns (spread, Object.assign — never mutate)
  - Validate all external inputs with zod or equivalent
  - Handle all error paths with try/catch and meaningful messages
  - Export types alongside implementation

MUST NOT DO:
  - No console.log / console.error
  - No hardcoded values (use constants or env vars)
  - No direct DB calls from UI layer
  - No mutation of function arguments

OUTPUT FORMAT:
  For each file: full file content (not diff)
  Then: summary of what was created and why
```
