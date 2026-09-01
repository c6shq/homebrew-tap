class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.8.1/c6s_v0.8.1_darwin_arm64.tar.gz"
  version "0.8.1"
  sha256 "c60799cec3ae0d9e1e2ff3b3c346295ba40a69d93e220e3acc9f5435df770a33"
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
