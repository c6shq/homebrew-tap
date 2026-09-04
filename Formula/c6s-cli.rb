class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.9.16/c6s_v0.9.16_darwin_arm64.tar.gz"
  version "0.9.16"
  sha256 "5f05ca1f3e86d03d0d24ed0f72452fb7ebd04bbfe6d64af16e988c9e74af11d1"
  license "Apache-2.0"
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
