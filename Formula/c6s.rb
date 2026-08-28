class C6s < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.1.1/c6s_v0.1.1_darwin_arm64.tar.gz"
  sha256 "9f987807855020e37a253a842e161f90b585aae5b5fbc47858c5fdc42980741a"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "c6s"
  end

  test do
    assert_match "c6s v#{version}", shell_output("#{bin}/c6s version")
  end
end
