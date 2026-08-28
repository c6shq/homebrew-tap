class C6s < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.3.1/c6s_v0.3.1_darwin_arm64.tar.gz"
  version "0.3.1"
  sha256 "ff6126498eb570a770402c700a13a0c494778bb38296f9819fe38b1db0dd4e60"
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
