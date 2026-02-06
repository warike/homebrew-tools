# Homebrew Tools

[![CI](https://github.com/warike/homebrew-tools/actions/workflows/ci.yml/badge.svg)](https://github.com/warike/homebrew-tools/actions/workflows/ci.yml)
![License: MIT](https://img.shields.io/badge/License-MIT-green)
[![Dependabot](https://badgen.net/badge/Dependabot/enabled/green?icon=dependabot)](https://dependabot.com/)

Custom Homebrew tap for warike tools and apps.

## Installation

```bash
brew tap warike/tools
```

## Available Casks

### Red Magic Room

A minimalist macOS menu bar app for ambient noise generation.

```bash
brew install --cask red-magic-room
```

| | |
|---|---|
| **Version** | 1.0.0 |
| **macOS** | 14.0+ (Sonoma) |
| **Source** | [warike/red-magic-room](https://github.com/warike/red-magic-room) |

**Features:**
- White, Brown, and Pink noise generation
- Focus/Rest timer cycles (Pomodoro-style)
- Menu bar only, lightweight (~200KB)
- Zero network requests, privacy-first

## Security

All casks include:
- SHA256 checksum verification
- HTTPS-only downloads
- Official GitHub release sources

See [SECURITY.md](SECURITY.md) for our security policy.

## Contributing

Contributions are welcome! Please read our [Contributing Guide](CONTRIBUTING.md) to get started. It covers:
- Adding new casks
- Updating existing casks
- Testing locally

## License

[MIT](LICENSE)
