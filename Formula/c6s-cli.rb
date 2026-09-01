class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.6.3/c6s_v0.6.3_darwin_arm64.tar.gz"
  version "0.6.3"
  sha256 "0420c414cbdd165be583ebb6659f3ee9813a1b89dd79a118247a39087dbf7852"
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
