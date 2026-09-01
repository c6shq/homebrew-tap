# c6shq/tap

Public Homebrew distribution metadata and reviewed binary releases for
[c6s — Cerberus](https://c6s.whitekiwi.link).

The application source repositories remain private. This repository contains only
public Formula/Cask definitions, checksum manifests, installer scripts, and binary
release assets intended for distribution.

## Install the CLI

```sh
brew install c6shq/tap/c6s-cli
```

The fully qualified name makes Homebrew trust only the selected Formula. Upgrades and
removal then use `brew upgrade c6s` and `brew uninstall c6s`.

Install the concurrently usable pre-release CLI as `c6s-beta`:

```sh
brew install c6shq/tap/c6s-beta
```

The two Formulae use separate executable names, account profiles, Keychain services,
device identities, and encrypted local vaults. Verify them with `c6s channel` and
`c6s-beta channel`.

Without Homebrew:

```sh
curl -fsSL https://c6s.whitekiwi.link/install.sh | sh
```

The current CLI supports Apple Silicon macOS. Both installation paths verify the
published SHA-256 checksum before installing the executable.

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

## Development

```sh
brew style Formula/c6s.rb
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
available under the [MIT License](LICENSE). Downloaded c6s CLI and Cerberus app
artifacts are proprietary and are explicitly excluded from that grant; see
[NOTICE](NOTICE). Formulae therefore use Homebrew's `license :cannot_represent`
marker for the downloaded software.
