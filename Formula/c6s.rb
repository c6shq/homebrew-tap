class C6s < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.5.3/c6s_v0.5.3_darwin_arm64.tar.gz"
  version "0.5.3"
  sha256 "b39003fd55da0a5ac37730bd62da142c3cc43479de4ca2845c7258a36c73b5ff"
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
