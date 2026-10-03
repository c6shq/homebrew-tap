class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.11.2/c6s_v0.11.2_darwin_arm64.tar.gz"
  version "0.11.2"
  sha256 "df91a7076a88b437ef6b30c2e4e235c0970ebc8e1412af91d562552bd61839ce"
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
    assert_match "unknown command: agent", shell_output("#{bin}/c6s agent 2>&1", 2)
  end
end
