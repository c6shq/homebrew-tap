class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.11.3/c6s_v0.11.3_darwin_arm64.tar.gz"
  version "0.11.3"
  sha256 "19ae6d6936d1a0f9f0271cb4be789da39ef49b4be7f42b4ec3dc8a7861180d22"
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
    assert_match "--revision", shell_output("#{bin}/c6s attachment policy --help")
    assert_match "--resume", shell_output("#{bin}/c6s attachment policy --help")
    assert_match "--item <local-item-id>", shell_output("#{bin}/c6s vault upload --help")
    assert_match "credential-store", shell_output("#{bin}/c6s doctor --help")
    assert_match "outputSuppressed", shell_output("#{bin}/c6s request execute --help")
    assert_match "typed wait diagnostics on stderr", shell_output("#{bin}/c6s request wait --help")
    assert_match "--min-validity", shell_output("#{bin}/c6s otp get --help")
    assert_match "--code-policy", shell_output("#{bin}/c6s otp policy --help")
    settings = JSON.parse(shell_output("#{bin}/c6s request config --json"))
    assert_equal 900, settings.fetch("approvalTTLSeconds")
    assert_equal 900, settings.fetch("executionTTLSeconds")
    assert_match "unknown command: agent", shell_output("#{bin}/c6s agent 2>&1", 2)
  end
end
