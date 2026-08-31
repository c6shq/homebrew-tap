class C6s < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.5.10/c6s_v0.5.10_darwin_arm64.tar.gz"
  version "0.5.10"
  sha256 "ab0a290bb6a945665884fc0f8aa79128e96c3e998fdb78cac1ba61920324a2a9"
  license :cannot_represent
  version_scheme 1

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "c6s"
  end

  test do
    assert_match "c6s v#{version}", shell_output("#{bin}/c6s version")
  end
end
