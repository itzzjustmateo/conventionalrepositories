# Conventional Repositories — Format Cheat Sheet

> **Conventional Repositories** is a lightweight convention for naming repositories with a consistent, predictable structure.

---

## Format

```
[<type>-]<project>[-<component>]
```

| Segment | Required | Description |
|---------|----------|-------------|
| `<type>` | No | A noun classifying the repository (e.g. `app`, `lib`, `docs`) |
| `<project>` | **Yes** | The name of the project or domain |
| `<component>` | No | Qualifier narrowing scope within a project |

---

## Types

| Type | Use for |
|------|---------|
| `app` | End-user application, deployable standalone |
| `service` | Backend service or microservice |
| `api` | API surface definition or implementation |
| `lib` | Shared library for reuse across projects |
| `cli` | Command-line interface tool |
| `docs` | Documentation |
| `infra` | Infrastructure-as-code, deployment configs |
| `plugin` | Extension to another system |
| `template` | Starter or scaffold for new projects |
| `example` | Sample code or sandbox |

Additional types MAY be defined by organizations.

---

## Rules (condensed)

- Type is **optional** — names without a type are just project names.
- When present, type MUST be a lowercase noun followed by `-`.
- Project MUST be present, type or no type.
- Segments separated by single hyphens only.
- Double hyphen `--` MUST NOT appear.
- Only lowercase `a-z`, digits `0-9`, and hyphens `-` allowed.
- Max recommended length: 100 characters.
- No version numbers in the name — use tags/releases instead.

---

## Examples

### With type prefix

```
app-dashboard
service-auth-core
api-gateway
lib-config
cli-deploy
infra-terraform
docs-handbook
plugin-slack
template-node-express
example-api-client
```

### Without type prefix (project-only)

```
shadcn-ui
shadcnui
prisma
nextjs
ui-shadcn
```

---

## Parsing

When a type prefix is present, the first segment is the type; everything after is the project name. When no type prefix is present, the entire name is the project name. Tools SHOULD consult a known type catalog to disambiguate.
