class C6s < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.5.0/c6s_v0.5.0_darwin_arm64.tar.gz"
  version "0.5.0"
  sha256 "1c9ffba038d5837b1ffcd1ee8693acc18e7a2033d91661a86dc6879df22b0224"
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
