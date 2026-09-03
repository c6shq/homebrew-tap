class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.9.10/c6s_v0.9.10_darwin_arm64.tar.gz"
  version "0.9.10"
  sha256 "3ade318ad382d2787802dc80f66e95037551280113d9e24a612cc952fed9be79"
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
