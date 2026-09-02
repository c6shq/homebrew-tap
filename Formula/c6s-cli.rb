class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.9.9/c6s_v0.9.9_darwin_arm64.tar.gz"
  version "0.9.9"
  sha256 "52b40109b60a3e1afa3dc959f2637e946d0c6e37558f18ecf70fc16469c64dd0"
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
