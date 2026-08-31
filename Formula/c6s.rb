class C6s < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.5.11/c6s_v0.5.11_darwin_arm64.tar.gz"
  version "0.5.11"
  sha256 "8aa1f61fecc93684bcd3e46ccafa75668acd924d109a4564c41c14caa3620853"
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
