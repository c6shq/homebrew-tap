class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.9.17/c6s_v0.9.17_darwin_arm64.tar.gz"
  version "0.9.17"
  sha256 "15be34027ce1ace47b1c51ccf3b9fb28e1c76f6ca73a9aa04fef6f74b15e9aa3"
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
