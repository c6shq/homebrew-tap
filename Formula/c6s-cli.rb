class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.8.2/c6s_v0.8.2_darwin_arm64.tar.gz"
  version "0.8.2"
  sha256 "66792592bad6ebd13d3783d8ce2336849888e7043f0135f2c80bd56d78b2df38"
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
