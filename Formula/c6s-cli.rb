class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.7.0/c6s_v0.7.0_darwin_arm64.tar.gz"
  version "0.7.0"
  sha256 "a73b4535fa53465203e949d40be6d8c6814c80f6ad84e2e657d2fd5c8dc27e59"
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
