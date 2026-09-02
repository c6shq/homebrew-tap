class C6sCli < Formula
  desc "Agent-friendly client for c6s — Cerberus"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.9.5/c6s_v0.9.5_darwin_arm64.tar.gz"
  version "0.9.5"
  sha256 "82113a159ee0e856a7fe4eed24db0a58982c5cd3cda25ed4de9e3aa93f902062"
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
