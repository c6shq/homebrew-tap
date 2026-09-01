class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.8.0/c6s_v0.8.0_darwin_arm64.tar.gz"
  version "0.8.0"
  sha256 "24a0887dd7e62dc858a59ea772bc291756d8880abbd7685f2345d13866c71e2f"
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
