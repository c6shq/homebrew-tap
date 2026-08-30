class C6s < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.5.2/c6s_v0.5.2_darwin_arm64.tar.gz"
  version "0.5.2"
  sha256 "53a3aadee435c59200aabfb7f9e5d40b385094796eab678098e45846ff1a8993"
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
