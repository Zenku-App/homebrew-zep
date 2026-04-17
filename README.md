# homebrew-zep

Homebrew tap for [zep](https://github.com/Zenku-App/homebrew-zep), a personal
ops console that watches Airflow + GitLab + Slack and runs Claude-driven
analysis and auto-fixes locally on your Mac.

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
