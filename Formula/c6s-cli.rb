class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.6.1/c6s_v0.6.1_darwin_arm64.tar.gz"
  version "0.6.1"
  sha256 "c7e323ebaae42ad7d2dbeab2cde688ee61bfac818c33019b625dc70e1220b63b"
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
