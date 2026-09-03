class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.9.12/c6s_v0.9.12_darwin_arm64.tar.gz"
  version "0.9.12"
  sha256 "1d0cf5647ad63348dae562ce53883a769f19fc242fef0e4d48dba6c8f4e3b47e"
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
