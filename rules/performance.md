# Performance Optimization

## Model Selection Strategy

**Haiku 4.5** (lightweight, cost-efficient):
- Simple worker agents with frequent invocation
- Straightforward code generation tasks
- High-volume, low-complexity operations

**Sonnet 4.6** (best coding model — default):
- Main development work
- Orchestrating multi-agent workflows
- Complex coding tasks

**Opus 4.6** (deepest reasoning):
- Jarvis orchestration
- Complex architectural decisions
- Maximum reasoning requirements

## Context Window Management

Avoid last 20% of context window for:
- Large-scale refactoring
- Feature implementation spanning multiple files
- Debugging complex interactions

Lower context sensitivity tasks (safe anytime):
- Single-file edits
- Independent utility creation
- Documentation updates
- Simple bug fixes

## Deep Reasoning

For complex tasks requiring maximum reasoning:
1. Use `ultrathink` keyword to trigger extended thinking
2. Enable **Plan Mode** for structured approach
3. Use split-role sub-agents for diverse analysis

## Build Troubleshooting

If build fails:
1. Use **build-error-resolver** agent immediately
2. Fix incrementally, verify after each change
3. Do not skip hooks or bypass type checks
