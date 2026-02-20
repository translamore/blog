---
description: Conventions and patterns for the Translamore Blog (Static Shock project)
---

# Translamore Blog Conventions

## Static Shock Frontmatter

Static Shock uses **YAML frontmatter** delimited by `---` (NOT HTML comments `<!-- -->`).

### Markdown files (.md) — use `---` delimiters:
```markdown
---
title: "My Post Title"
description: "A short description"
publishDate: 2026-02-20
layout: layouts/post.jinja
---
# Actual markdown content here
```

### Jinja files (.jinja) — use `<!-- -->` delimiters:
```html
<!--
title: My Page Title
-->
<!doctype html>
...
```

> **Important**: Markdown files MUST use `---` YAML frontmatter. Jinja files use HTML comment frontmatter. Mixing these up will cause build failures.

## Content Structure

```
source/
├── news/              # English app update posts (tag: news)
│   ├── _data.yaml     # Default layout + tags for all news posts
│   └── my-post.md     # Individual news post
├── introstories/      # Multi-language reading stories (tag: introstories)
│   ├── _data.yaml     # Default layout + tags for all introstories
│   ├── cs/            # Czech
│   ├── de/            # German
│   ├── en/            # English
│   ├── fr/            # French
│   ├── it/            # Italian
│   ├── pl/            # Polish
│   └── uk/            # Ukrainian
├── _includes/
│   └── layouts/
│       └── post.jinja # Shared post layout
└── index.jinja        # Homepage listing both categories
```

## Adding New Content

### News Post
Create a file in `source/news/` (the `_data.yaml` provides default layout and tags):
```markdown
---
title: "What's New in Translamore v2.0"
description: "Major update with new features"
publishDate: 2026-03-01
---
Your content here...
```

### Introstory
Create a file in `source/introstories/<lang>/` with a matching header image:
```markdown
---
title: "Article Title"
description: "An introstory about <topic> in <lang>"
language: <lang>
topic: <topic>
publishDate: 2026-03-01
header: /introstories/<lang>/<topic>.jpg
---
Your content here...
```

## Build Commands
- `dart run bin/main.dart` — production build
- `dart run bin/main.dart preview` — include draft posts
- `./scripts/serve_wrapper.sh` — serve the static site locally (ensures single instance)

## Deployment
- Hosted on **GitHub Pages** via `.github/workflows/deploy.yml`
- Custom domain: `blog.translamore.com` (CNAME in `source/CNAME`)
- Main app remains on Firebase at `translamore.com`