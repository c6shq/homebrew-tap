class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.9.7/c6s_v0.9.7_darwin_arm64.tar.gz"
  version "0.9.7"
  sha256 "b8762e7e44a60d160f9019fa1e96e32425c537384d3a22970446a9c4aa325f5e"
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
