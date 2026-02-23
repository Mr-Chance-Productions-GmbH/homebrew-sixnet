# homebrew-sixnet

Homebrew tap for [sixnet](https://github.com/Mr-Chance-Productions-GmbH/sixnet) —
a self-hosted VPN platform built on ZeroTier.

## Install

```bash
# GUI app + daemon (recommended)
brew install --cask Mr-Chance-Productions-GmbH/sixnet/sixnet-client

# Daemon only
brew install Mr-Chance-Productions-GmbH/sixnet/sixnetd
```

## What's in this tap

| Package | Type | Description |
|---------|------|-------------|
| `sixnetd` | Formula | Privileged background daemon — manages ZeroTier operations, exposes a Unix socket |
| `sixnet-client` | Cask | macOS menu bar app — connect, disconnect, manage networks without a terminal |

## Uninstall

```bash
brew uninstall --cask sixnet-client sixnetd
```

No root required. No traces left in system directories.

## Related

- [sixnetd](https://github.com/Mr-Chance-Productions-GmbH/sixnetd) — daemon source
- [sixnet-client](https://github.com/Mr-Chance-Productions-GmbH/sixnet-client) — app source
- [sixnet](https://github.com/Mr-Chance-Productions-GmbH/sixnet) — server-side stack
