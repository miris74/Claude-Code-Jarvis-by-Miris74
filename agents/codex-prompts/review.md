# Codex Prompt Template: Review

Use when: Reviewing code quality, catching issues before commit.

```
TASK:
  Review the following code for quality, correctness, and adherence to standards.
  Files to review:
    - [path]
    - [path]

EXPECTED OUTCOME:
  Structured report with issues grouped by severity.
  No code rewriting — analysis only.

CONTEXT:
  Tech stack: [language / framework]
  PR/change summary: [what this code is trying to do]
  Special concerns: [performance / security / correctness / style]

CONSTRAINTS:
  - Report only — do not modify files
  - Focus on: correctness, security, performance, maintainability
  - Ignore: formatting (handled by Prettier), minor naming preferences

MUST DO:
  - Flag every mutation (direct object/array modification)
  - Flag every console.log
  - Flag every hardcoded value
  - Flag missing error handling
  - Flag functions over 50 lines or files over 800 lines
  - Flag missing input validation at boundaries

MUST NOT DO:
  - No style opinions beyond the above checklist
  - No suggestions to add unnecessary abstractions
  - No rewrites

OUTPUT FORMAT:
  ## Summary
  [1-2 sentence overview]

  ## Issues

  ### CRITICAL (must fix)
  - [file:line] [description]

  ### HIGH (should fix)
  - [file:line] [description]

  ### MEDIUM (consider fixing)
  - [file:line] [description]

  ### LOW (optional)
  - [file:line] [description]

  ## Verdict
  PASS / FAIL — [one sentence reason]
```
