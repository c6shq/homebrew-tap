class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.9.11/c6s_v0.9.11_darwin_arm64.tar.gz"
  version "0.9.11"
  sha256 "e6bff60c72a79ece8820bd385fbad604e14df7c3e325289f7e9eaeaadd0c8c39"
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
