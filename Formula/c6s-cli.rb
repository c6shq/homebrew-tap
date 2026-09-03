class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.9.13/c6s_v0.9.13_darwin_arm64.tar.gz"
  version "0.9.13"
  sha256 "8bd0e8ee7c87fb5241b9f189bd5cc587e0fb4825935ccc108e3e76c8bff55743"
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
