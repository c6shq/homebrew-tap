class C6s < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.5.13/c6s_v0.5.13_darwin_arm64.tar.gz"
  version "0.5.13"
  sha256 "0f0c895631df314b4e92790f7230e5050dcb5c2eebab21e1450477d44f159405"
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
