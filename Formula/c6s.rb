class C6s < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.5.7/c6s_v0.5.7_darwin_arm64.tar.gz"
  version "0.5.7"
  sha256 "0d86693b0f7b256f5071b5d04d1fdb67deb1ade72e17a17a47a678d473b0646d"
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
