# Learned Rules and Patterns

This file contains lessons learned from previous conversations to improve future performance.

## Phase: General
- **Do:** Always check for existing workflows in `.agents/workflows` before starting a task.
- **Do:** Use the `retrospective` workflow at the end of every conversation.
- **Don't:** Repeat implementation mistakes that have been documented here.

## Phase: Coding
- **Do:** Ensure YAML frontmatter in `.md` files uses `---` delimiters.
- **Do:** Ensure HTML comment frontmatter in `.jinja` files uses `<!-- -->` delimiters.

## Phase: Communication
- **Do:** Be proactive but clarify intent if unsure about breaking changes.
- **Remember:** The user prefers a "wow" factor in UI, though this project is a static blog.

## Phase: Project-Specific (Translamore Blog)
- **Remember:** The blog is at `blog.translamore.com`, while the app is at `translamore.com`.
- **Remember:** Use `./scripts/serve_wrapper.sh` to serve locally.
