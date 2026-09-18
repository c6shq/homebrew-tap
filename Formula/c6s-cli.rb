class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.9.22/c6s_v0.9.22_darwin_arm64.tar.gz"
  version "0.9.22"
  sha256 "b3d2a3f5b0cb35b255152f9d7ba4c8b2582fc6f57364f3ae51884ecb49fd7a1d"
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
  end
end
