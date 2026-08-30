class C6s < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.5.4/c6s_v0.5.4_darwin_arm64.tar.gz"
  version "0.5.4"
  sha256 "a1f3c3ed938503b80ea100762d24a2d7a23659412828a1bf8938f4a8ce3ac5d5"
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
