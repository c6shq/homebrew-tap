class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.9.0/c6s_v0.9.0_darwin_arm64.tar.gz"
  version "0.9.0"
  sha256 "70cffdca8780439572ef41aa33656cf53e2a24848a18d01e809e7985fd0a0a56"
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
