class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.8.4/c6s_v0.8.4_darwin_arm64.tar.gz"
  version "0.8.4"
  sha256 "81b2fde61fbb94013fea3ab834d3bd21fc896c94df36b50c27fa97e29534e67a"
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
