# Conventional Repositories

A specification for standardizing repository names across teams and organizations, inspired by the principles of [Conventional Commits](https://www.conventionalcommits.org/).

## Repository Name Format

```
[<type>-]<project-name>[-<component>]
```

- **type** (optional): `lib`, `app`, `cli`, `pkg`, `api`, `svc`, `infra`, `cfg`, `doc`
- **project-name**: The common project identifier
- **component** (optional): Sub-component or module

## Build

```bash
# Install dependencies and build CSS/JS
bun install --cwd themes/conventional-commits
cd themes/conventional-commits && bun run build

# Generate site
hugo
```

## Development

```bash
hugo serve --disableFastRender
```

Visit `http://localhost:1313/en/v1.0.0/`.

## Contents

- `config.yaml` — Site configuration (languages, params, nav)
- `content/` — Versioned specification content
- `themes/conventional-commits/` — Hugo theme (layouts, SCSS, JS)
- `static/` — Static files (redirect index.html, _redirects)
- `docs/FORMAT.md` — AI-friendly repository naming cheat sheet

## Deploy

| Platform | Config | Build command |
|----------|--------|---------------|
| Netlify  | `netlify.toml` | `bun install … && bun run build && hugo` |
| Vercel   | `vercel.json`  | `bun install … && bun run build && hugo` |
