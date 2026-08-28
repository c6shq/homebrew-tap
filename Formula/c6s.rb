class C6s < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.3.0/c6s_v0.3.0_darwin_arm64.tar.gz"
  version "0.3.0"
  sha256 "3032e7eb17646802a4f916fc246569644c0c2b6d19c303d80c3fc3417c09f063"
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
