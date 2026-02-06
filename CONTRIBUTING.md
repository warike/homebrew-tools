# Contributing to Homebrew Tools

First off, thanks for taking the time to contribute! 🎉

This document guides you through the process of adding or updating casks in this tap.

## 🛠 Prerequisites

- **Homebrew** installed.
- **Git**.

## 🚀 Development Workflow

### 1. Clone & Branch
Always create a new branch for your work.

### 2. Testing Casks
You can install a cask directly from the local file to verify it works.

```bash
brew install --cask --debug --verbose ./Casks/your-cask.rb
```

### 3. Commit Messages 🚨

We use **[Conventional Commits](https://www.conventionalcommits.org/)**.

### 4. Pull Requests
1. Push your branch to GitHub.
2. Open a Pull Request (PR) against `main`.

## 📦 Updating Casks

When updating a cask version:
1. Update the `version` field.
2. Update the `sha256` checksum.

## 🔒 Security

- **Official Sources**: Ensure `url` points to the official release.
- **Checksums**: Always include a `sha256`. Do not use `no_check`.

## 📄 License
By contributing, you agree that your contributions will be licensed under the MIT License.
