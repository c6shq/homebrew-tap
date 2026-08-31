class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.5.14/c6s_v0.5.14_darwin_arm64.tar.gz"
  version "0.5.14"
  sha256 "b14dfd477a1775f30320590bc2c12bbb3569ad3b1885b7a863ebcb272a5a38e8"
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
