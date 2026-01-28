# Homebrew Tap for BrowserTotal

This is the official Homebrew tap for [BrowserTotal](https://browsertotal.com).

## Installation

```bash
brew install SeraphicSecurity/browsertotal/browsertotal
```

Or add the tap first:

```bash
brew tap SeraphicSecurity/browsertotal
brew install browsertotal
```

## Formulae

| Formula | Description |
|---------|-------------|
| `browsertotal` | CLI tool to scan URLs, extensions, and packages for security threats |

## Usage

```bash
# Scan a URL
browsertotal url https://example.com

# Scan an npm package
browsertotal npm lodash

# Scan a VS Code extension
browsertotal vscode ms-python.python

# Output as JSON
browsertotal npm express --json
```

## Issues

Please report issues at: https://github.com/SeraphicSecurity/BrowserTotal/issues
