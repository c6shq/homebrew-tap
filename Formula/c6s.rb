class C6s < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.5.9/c6s_v0.5.9_darwin_arm64.tar.gz"
  version "0.5.9"
  sha256 "3c05e41ca74c5117e579757638d9d6a6b14eef01a312e08980566b5ef41bbcc8"
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
