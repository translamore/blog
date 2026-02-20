---
description: Analyze the current session and update learned rules for future conversations.
---

# Retrospective Workflow

This workflow should be executed before concluding any significant task or conversation.

## Steps

1. **Review Session**: Read back through the conversation history and the changes made.
2. **Extract Lessons**: Identify:
    - **Wins**: What worked well? (e.g., efficient tool use, clear communication)
    - **Mistakes**: What went wrong? (e.g., tool errors, misunderstood requirements)
    - **Patterns**: Recurring project-specific rules or user preferences.
3. **Update Rules**: Modify [learned_rules.md](.agents/learned_rules.md) with new insights.
    - Categorize under "General", "Coding", "Communication", or "Project-Specific".
    - Keep entries concise and actionable.
4. **Link Rules**: If any new rules are critical for project conventions, consider updating [conventions.md](.agents/workflows/conventions.md) as well.

// turbo
5. **Finalize**: Summarize the retrospective in the final `walkthrough.md` or `notify_user` call.