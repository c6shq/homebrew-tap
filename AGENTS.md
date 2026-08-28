# c6shq tap agent guidance

- Treat every tracked file and release asset as public.
- Mirror only reviewed, checksummed release artifacts; never publish private source,
  credentials, configuration, workflow artifacts, or unreleased builds.
- Keep the CLI as a Formula. Add the `cerberus` Cask only for a signed and notarized
  native `.app` release.
- Use immutable versioned URLs and exact SHA-256 checksums.
- Run `brew style`, `brew audit`, installation, and `brew test` before release.
- Commit with `{type}: {imperative message}`.
