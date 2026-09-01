class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.8.3/c6s_v0.8.3_darwin_arm64.tar.gz"
  version "0.8.3"
  sha256 "989d6d19bcee07a2c129433725a3fb711625f2c24615ec502093fb08c3d796e0"
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
