# c6shq/tap

Public Homebrew distribution metadata and reviewed binary releases for
[c6s — Cerberus](https://c6s.whitekiwi.link).

The application source repositories remain private. This repository contains only
public Formula/Cask definitions, checksum manifests, installer scripts, and binary
release assets intended for distribution.

## Install the CLI

```sh
brew install c6shq/tap/c6s
```

The fully qualified name makes Homebrew trust only the selected Formula. Upgrades and
removal then use `brew upgrade c6s` and `brew uninstall c6s`.

Without Homebrew:

```sh
curl -fsSL https://c6s.whitekiwi.link/install.sh | sh
```

The current CLI supports Apple Silicon macOS. Both installation paths verify the
published SHA-256 checksum before installing the executable.

## Packages

| Type | Token | Status |
| --- | --- | --- |
| Formula | [`c6s`](Formula/c6s.rb) | Apple Silicon macOS CLI |
| Cask | `cerberus` | Planned after the native app is signed, notarized, and released |

A Cask is deliberately not simulated with the CLI archive. `brew install --cask
c6shq/tap/cerberus` will be introduced with the signed Cerberus `.app` release.

## Release boundary

Each public `c6s-v*` release must be a byte-for-byte mirror of the private, reviewed
`c6shq/c6s-cli` archive, `checksums.txt`, and `install.sh`. Never publish source
archives, credentials, internal configuration, workflow artifacts, or unreleased
builds here.

## Development

```sh
brew style Formula/c6s.rb
brew audit --strict --online c6shq/tap/c6s
brew install c6shq/tap/c6s
brew test c6shq/tap/c6s
```

See Homebrew's official [tap](https://docs.brew.sh/Taps), [Formula](https://docs.brew.sh/Formula-Cookbook),
and [Cask](https://docs.brew.sh/Cask-Cookbook) documentation for the packaging model.
