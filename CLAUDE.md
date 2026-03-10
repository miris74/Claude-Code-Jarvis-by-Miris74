# Global Settings

## System Architecture

```
User → Claude Code (Jarvis: orchestrator)
              ↓
    ┌─────────────────────────────┐
    │ Specialist Agents           │
    │  Coder → Codex MCP          │
    │  Researcher                 │
    │  planner / architect        │
    │  tdd-guide / code-reviewer  │
    │  security-reviewer          │
    │  build-error-resolver       │
    │  e2e-runner / doc-updater   │
    │  refactor-cleaner           │
    └─────────────────────────────┘
```

## Basic Principles

- Conventional Commits: `feat:` / `fix:` / `refactor:` / `test:` / `docs:` / `chore:`
- Use `/clear` in long sessions to refresh context
- Delegate to agents proactively — see `rules/agents.md`
- All code standards in `rules/coding-style.md` are canonical
