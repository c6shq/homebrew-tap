class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.9.1/c6s_v0.9.1_darwin_arm64.tar.gz"
  version "0.9.1"
  sha256 "7a73de66aeaae059dbf16958971f23be94b78c25890de3624ff7a7e2e9ce030d"
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
