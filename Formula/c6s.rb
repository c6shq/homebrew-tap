class C6s < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.5.6/c6s_v0.5.6_darwin_arm64.tar.gz"
  version "0.5.6"
  sha256 "960881bfe2d1653fdcd9a38e9f3fb60ca75b7482c421aa87a026c2688a9f54dd"
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
