class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.9.15/c6s_v0.9.15_darwin_arm64.tar.gz"
  version "0.9.15"
  sha256 "2926c4878b4a1ae5bf50f745ac2eab3e3d2b59a06177564ecde5c77028ea101a"
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
