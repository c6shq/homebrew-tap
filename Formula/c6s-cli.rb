class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.8.5/c6s_v0.8.5_darwin_arm64.tar.gz"
  version "0.8.5"
  sha256 "6ca1c3a999b8b697cffbaed96b4888737022eddccafb9c66c7ce6da9c3c5f414"
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
