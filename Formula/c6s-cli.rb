class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.10.1/c6s_v0.10.1_darwin_arm64.tar.gz"
  version "0.10.1"
  sha256 "929b10e9e0a1d5d1f105e5900d73c42142bb6edcc6d9778676a116ee5aa5e389"
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
    assert_match "--allow-session", shell_output("#{bin}/c6s agent serve --help")
    assert_match "credential-store", shell_output("#{bin}/c6s doctor --help")
  end
end
