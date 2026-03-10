# Agent Orchestration

## System Overview

**Jarvis** is the chief orchestrator. All complex tasks flow through Jarvis → specialist agents.

```
User → Jarvis (opus) → [parallel delegation] → results → synthesize → report
```

**Rule: All code tasks go through Coder → Codex. Never use Claude directly for code.**

## Full Agent Roster

Located in `~/.claude/agents/`:

### Jarvis System
| Agent | Model | Role |
|-------|-------|------|
| jarvis | opus | Chief orchestrator — plans and delegates |
| **coder** | sonnet | ALL code tasks: implement, review, refactor, test, debug — via Codex MCP |
| researcher | sonnet | Web research and information gathering |

### Planning & Design (Claude reasoning required)
| Agent | Model | Role |
|-------|-------|------|
| planner | sonnet | Implementation planning for complex features |
| architect | sonnet | System design and architectural decisions |

### Infrastructure & Ops
| Agent | Model | Role |
|-------|-------|------|
| build-error-resolver | sonnet | Fix build/type errors |
| e2e-runner | sonnet | End-to-end testing with Playwright |
| doc-updater | sonnet | Documentation generation |
| security-reviewer | sonnet | Security audit (auth, APIs, sensitive data) |

## Routing Decision Tree

```
Is it code? (implement / review / refactor / test / debug / cleanup)
  └─ YES → Coder
  └─ NO
      ├─ Research needed?        → Researcher
      ├─ Architecture/planning?  → architect / planner
      ├─ Build broken?           → build-error-resolver
      ├─ E2E tests?              → e2e-runner
      ├─ Docs?                   → doc-updater
      └─ Security audit?         → security-reviewer
```

## Parallel Execution

ALWAYS run independent agents in parallel:

```
# GOOD
Launch in parallel:
1. Researcher — gather requirements
2. architect — design system

# BAD
Sequential when independent
```

## Multi-Perspective Analysis

For complex problems, use split-role sub-agents simultaneously:
- Factual reviewer
- Senior engineer
- Security expert
- Consistency reviewer
