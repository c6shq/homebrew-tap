# c6shq/tap

Public Homebrew distribution metadata and reviewed binary releases for
[c6s — Cerberus](https://c6s.app).

The application source repositories remain private. This repository contains only
public Formula/Cask definitions, checksum manifests, installer scripts, and binary
release assets intended for distribution.

## Install the CLI on macOS

```sh
brew install c6shq/tap/c6s-cli
```

The fully qualified name makes Homebrew trust only the selected Formula. Upgrades and
removal then use `brew upgrade c6s-cli` and `brew uninstall c6s-cli`.

Install the concurrently usable pre-release CLI as `c6s-beta`:

```sh
brew install c6shq/tap/c6s-beta
```

The two Formulae use separate executable names, account profiles, Keychain services,
device identities, and encrypted local vaults. Verify them with `c6s channel` and
`c6s-beta channel`.

Without Homebrew:

```sh
curl -fsSL https://c6s.app/install.sh | sh
```

The macOS CLI supports Apple Silicon macOS 14+. Both installation paths verify the
published SHA-256 checksum before installing the executable.

## Install the CLI on Ubuntu x86_64 (preview)

Use your normal Ubuntu GNOME desktop session and an already unlocked persistent
default keyring. Install the prerequisites, then run the installer as your normal
user:

```sh
sudo apt install curl ca-certificates python3 openssh-client
curl -fsSL https://github.com/c6shq/homebrew-tap/releases/download/c6s-linux-latest/install-linux.sh | sh
export PATH="$HOME/.local/bin:$PATH"
c6s version
c6s channel
c6s protocol verify
c6s doctor --json
```

The installer authenticates the checksum manifest with a pinned publisher SSH
key, checks the archive SHA-256 and Linux x86_64 executable identity, and atomically
installs to `~/.local/bin/c6s`. It refuses symlink destinations and does not edit
shell startup, account or vault configuration. Add the PATH line to your shell
configuration if needed. Notices are installed under
`${XDG_DATA_HOME:-$HOME/.local/share}/c6s/c6s`.

To pin a version:

```sh
curl -fsSL https://github.com/c6shq/homebrew-tap/releases/download/c6s-linux-v0.11.7/install-linux.sh -o install-linux.sh
C6S_VERSION=v0.11.7 sh install-linux.sh
```

The [immutable Linux preview release](https://github.com/c6shq/homebrew-tap/releases/tag/c6s-linux-v0.11.7)
includes the archive, SBOM, installer, publisher public key, checksums, provenance
and signatures. The publisher key fingerprint is
`SHA256:Esv3OhmqQzqPeWRzSiHlnxmaq/3KWXMtjzte/2n2TIs`.

Linux uses the existing `stable` CLI channel and production server. Its credential
adapter uses exportable software keys in the existing Secret Service, with no
hardware or biometric protection. Headless SSH/container sessions without that
service cannot perform credential operations. The preview does not complete
live-account/approval acceptance or the supported Ubuntu-version matrix. No Linux
ARM64 package is published. See the [English](https://docs.c6s.app/install/cli)
or [Korean](https://docs.c6s.app/ko/install/cli) guide for session
requirements and diagnostics.

## Packages

| Type | Token | Status |
| --- | --- | --- |
| Formula | [`c6s-cli`](Formula/c6s-cli.rb) | Apple Silicon macOS CLI (`c6s`) |
| Formula | [`c6s-beta`](Formula/c6s-beta.rb) | Concurrent CLI beta |
| Cask | [`cerberus`](Casks/cerberus.rb) | Universal macOS 14+ native app |
| Cask | [`cerberus@beta`](Casks/cerberus@beta.rb) | Concurrent macOS beta |

Install the Developer ID-signed and Apple-notarized native app with:

```sh
brew install --cask c6shq/tap/cerberus
```

Install the independently signed and notarized beta beside it with:

```sh
brew install --cask c6shq/tap/cerberus@beta
```

Local developers use the private desktop repository's `scripts/install-dev.sh` for
the separate `Cerberus Dev.app` identity.

## Release boundary

Each public `c6s-v*` release must be a byte-for-byte mirror of the private, reviewed
`c6shq/c6s-cli` archive, `checksums.txt`, and `install.sh`. Never publish source
archives, credentials, internal configuration, workflow artifacts, or unreleased
builds here.

Linux preview assets use separate `c6s-linux-v*` immutable releases and the
`c6s-linux-latest` alias. Mirror all eight qualified files and verify both SSH
signatures and every downloaded byte. Do not replace the macOS `c6s-latest` alias
or its Formula when publishing a Linux preview.

## Development

```sh
brew style Formula/c6s-cli.rb
brew audit --strict --online c6shq/tap/c6s-cli
brew install c6shq/tap/c6s-cli
brew test c6shq/tap/c6s-cli
```

Tap syntax is checked on every push and pull request. The full macOS install,
Gatekeeper, notarization, and executable test matrix is an explicit manual release
gate so routine metadata edits do not consume the 10x-billed hosted macOS allowance.

See Homebrew's official [tap](https://docs.brew.sh/Taps), [Formula](https://docs.brew.sh/Formula-Cookbook),
and [Cask](https://docs.brew.sh/Cask-Cookbook) documentation for the packaging model.

## License

The Formula, Cask, installer, and packaging metadata in this repository are
available under the [MIT License](LICENSE). Downloaded artifacts carry their own
licenses rather than this tap's MIT grant; see [NOTICE](NOTICE). The current c6s CLI
archive includes Apache-2.0, reflected by its Formula. Cerberus native app terms
remain separate.
