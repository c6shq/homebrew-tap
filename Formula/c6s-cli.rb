class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.10.5/c6s_v0.10.5_darwin_arm64.tar.gz"
  version "0.10.5"
  sha256 "54c5291f50e8fd9e133d6cc740f9b80889d995bc340f6a18f31cf7dc0a05754d"
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
    assert_match "unknown command: agent", shell_output("#{bin}/c6s agent 2>&1", 2)
  end
end
