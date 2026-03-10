# Codex Prompt Template: Debug

Use when: Root cause analysis and fixing a specific bug.

```
TASK:
  Debug and fix the following issue in [file path / module].

  Error / symptom:
  [paste exact error message or describe unexpected behavior]

  Steps to reproduce:
  1. [step]
  2. [step]
  3. [result]

EXPECTED OUTCOME:
  - Root cause identified and explained
  - Minimal fix applied (no refactoring beyond what's needed)
  - Existing tests pass
  - No new bugs introduced

CONTEXT:
  Tech stack: [language / framework / runtime]
  Affected files:
    - [path]: [what it does]
  Recent changes (if known): [what changed before this broke]
  Environment: [Node version / browser / OS if relevant]

CONSTRAINTS:
  - Fix must be minimal — do not refactor surrounding code
  - Do not change public API signatures
  - If root cause is unclear, explain top 2-3 hypotheses before fixing

MUST DO:
  - State root cause explicitly before showing fix
  - Show before/after diff for the fix
  - Add or update a test that would have caught this bug
  - Handle the error path that was missing

MUST NOT DO:
  - No console.log left in production code
  - No hardcoded workarounds
  - No suppressing errors with empty catch blocks
  - No "fix" that just hides the symptom

OUTPUT FORMAT:
  ## Root Cause
  [Clear explanation of why this happened]

  ## Fix
  [file:line] — before/after diff

  ## Test
  Test case that reproduces and verifies the fix

  ## Prevention
  [Optional: what to do to avoid recurrence]
```
