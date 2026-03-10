# Codex Prompt Template: Test

Use when: Generating unit or integration tests for existing code.

```
TASK:
  Generate tests for [file path / function name / module].
  Test type: [unit / integration / both]
  Framework: [Jest / Vitest / pytest / etc.]

EXPECTED OUTCOME:
  - Coverage: 80%+ of branches and lines
  - All happy paths covered
  - All error paths covered
  - Edge cases covered (empty input, null, boundary values)

CONTEXT:
  Tech stack: [language / framework / test runner]
  File under test: [path]
  Existing test examples: [path or "none"]
  Key behaviors to test:
    - [behavior 1]
    - [behavior 2]

CONSTRAINTS:
  - Test file location: [e.g. __tests__/foo.test.ts or foo.spec.ts]
  - Mock external dependencies (DB, API calls, file system)
  - Do not test implementation details — test behavior only
  - Each test: one assertion focus (arrange / act / assert)

MUST DO:
  - Descriptive test names: "should [behavior] when [condition]"
  - Group with describe blocks by function or scenario
  - Cover: success, failure, edge cases for each public function
  - Mock all I/O (no real network/DB calls in unit tests)

MUST NOT DO:
  - No console.log in tests
  - No hardcoded IDs or secrets
  - No tests that depend on execution order
  - No skipped tests (no .skip or .todo without comment)

OUTPUT FORMAT:
  Full test file content
  Coverage estimate: [X]% lines, [X]% branches
  List of scenarios covered
```
