class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.10.3/c6s_v0.10.3_darwin_arm64.tar.gz"
  version "0.10.3"
  sha256 "aeabde8acb5a8af93e27b1e8f6806ff01450fb1cce8c5977292d197c79a1d245"
  license "Apache-2.0"
  version_scheme 1

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "c6s"
  end

  test do
    assert_match "c6s v#{version}", shell_output("#{bin}/c6s version")
    assert_match "--resume", shell_output("#{bin}/c6s attachment upload --help")
    assert_match "--item <local-item-id>", shell_output("#{bin}/c6s vault upload --help")
    assert_match "credential-store", shell_output("#{bin}/c6s doctor --help")
    assert_match "unknown command: agent", shell_output("#{bin}/c6s agent 2>&1", 2)
  end
end
