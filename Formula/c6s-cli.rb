class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.6.0/c6s_v0.6.0_darwin_arm64.tar.gz"
  version "0.6.0"
  sha256 "57fd99c7e3bc6cc2edd46ef81b5cabb732df664c4d00652a336759549fed4f5b"
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
