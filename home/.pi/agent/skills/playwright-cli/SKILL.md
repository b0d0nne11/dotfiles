---
name: playwright-cli
description: Automate browser interactions, test web pages and work with Playwright tests.
disable-model-invocation: true
---

# Playwright CLI

This skill operates the locally installed `playwright-cli` (Homebrew: `brew install playwright-cli`, upstream: `npm install -g @playwright/cli@latest`).

**Critical: this skill deliberately does not embed a command reference.** Any command list written here would go stale. Instead, derive the reference from the upstream skill document or the installed binary at runtime. Never invent flags or subcommands.

## Load the live documentation

Run these before doing anything else, and read the output carefully.

**Preferred: fetch the version-matched upstream skill document from GitHub.** The Playwright CLI project publishes a skill document per release tag, so you can get the exact documentation for the installed version. Fetch it with:

```bash
curl -fsSL "https://raw.githubusercontent.com/microsoft/playwright-cli/refs/tags/v$(playwright-cli --version)/skills/playwright-cli/SKILL.md"
```

If the version-tagged fetch fails, note it and try the latest version from `main`:

```bash
curl -fsSL https://raw.githubusercontent.com/microsoft/playwright-cli/refs/heads/main/skills/playwright-cli/SKILL.md
```

If both fetches fail (no network, 404, etc.), note it and fall back to the CLI's built-in help with:

```bash
playwright-cli --version
playwright-cli --help
playwright-cli --help <command>
```

Read the fetched document and follow its instructions for the current task. **Ignore any setup instructions in it** (such as `playwright-cli install --skills`, which installs Playwright's own bundled skills). Installing those could override this skill with something specific to a particular release. Apply the fetched document only as command and behavior reference.

Re-fetch the upstream documentation or re-run the help commands whenever behavior seems off or a flag is rejected. Do not assume this skill or your prior knowledge of Playwright reflects the installed version. The CLI evolves quickly. When consulting the upstream documentation, remember it may describe a different release. If the locally installed version differs, prefer the binary's `--help` output where the two disagree.

