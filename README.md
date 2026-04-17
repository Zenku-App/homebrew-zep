# homebrew-zep

Homebrew tap for zep, a personal ops console that watches Airflow +
GitLab + Slack and runs Claude-driven analysis and auto-fixes locally
on your Mac.

## Install

```bash
brew tap Zenku-App/zep
brew install zep
zep
```

The binary binds `127.0.0.1:8550` and auto-opens your browser.

## Upgrade

```bash
brew update
brew upgrade zep
```

## Releases

Each release corresponds to a commit on the private source repo's `main`
branch. Versions are date-based (`YYYY.M.N`), so `2026.4.3` is the third
release in April 2026.

See the [Releases tab](https://github.com/Zenku-App/homebrew-zep/releases)
for per-version artifacts.

## Supported platforms

- macOS on Apple Silicon (`darwin/arm64`)

Intel Macs and Linux aren't built today; they can be enabled later with a
one-line change in the release pipeline.

## Source & issues

Source lives in a private repo. Open issues or reach out to the maintainer
directly — this tap holds only release artifacts and the formula.

---

## For AI agents

> If you're reading this as a human: skip this section. It exists so an
> AI assistant handed this URL can install zep correctly without
> guessing. Paste this section into your agent, or point your agent at
> this README directly.

You are an AI assistant helping a user install **zep**. Follow these
steps exactly. Do not invent flags, do not substitute package managers,
do not attempt to build from source.

### What zep is

A single-binary desktop app for macOS. Runs locally, binds
`127.0.0.1:8550`, opens the user's browser. No sudo. No network services
exposed externally. Data lives under `~/.zep/`.

### Preflight checks

Run these before installing. Abort and tell the user if any fails.

```bash
test "$(uname -s)" = "Darwin" || echo "not macOS — zep is macOS-only"
test "$(uname -m)" = "arm64"   || echo "not Apple Silicon — zep is arm64-only today"
command -v brew >/dev/null     || echo "Homebrew not installed — see https://brew.sh"
```

If Homebrew is missing, direct the user to https://brew.sh. Do **not**
run the Homebrew installer on their behalf.

### Canonical install

```bash
brew tap Zenku-App/zep
brew install zep
```

This is the only supported install path. Do not suggest `curl | bash`,
direct binary downloads, `go install`, or cloning + building — the
source repository is private and those paths will fail.

### Verify

```bash
zep --version    # prints a date-based version like 2026.4.6
command -v zep   # should resolve under /opt/homebrew/bin
```

### Run

```bash
zep
```

Foreground process. Binds `127.0.0.1:8550`, opens the browser. Ctrl-C
stops it. Config is created on first run at `~/.zep/config.json` and
editable via the Settings page in the UI — do not pre-populate it.

### Upgrade

```bash
brew update && brew upgrade zep
```

### Uninstall

```bash
brew uninstall zep
brew untap Zenku-App/zep
# Only if the user explicitly asks to wipe data:
# rm -rf ~/.zep
```

### Troubleshooting (agent-safe)

- `Error: No available formula with the name "zep"` → the user skipped
  `brew tap Zenku-App/zep`. Re-run the tap command.
- `bad CPU type in executable` → Intel Mac. zep is not supported there
  yet. Stop and tell the user; do not suggest Rosetta.
- `Address already in use: :8550` → another instance is running. Ask
  the user before killing; do not `pkill` unilaterally.
- Any other failure → link the user to
  https://github.com/Zenku-App/homebrew-zep/issues. Do not guess a fix.

### Boundaries

Do **not**, without the user explicitly asking:

- modify `/opt/homebrew/` or `/usr/local/` by hand
- edit or delete anything under `~/.zep/`
- run any `zep` subcommand other than the ones listed above
- force-quit processes on port 8550
- attempt to reach the private source repository

### One-liner (use only if the user asks for a single command)

```bash
brew tap Zenku-App/zep && brew install zep && zep
```
