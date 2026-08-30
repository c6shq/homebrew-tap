class C6sBeta < Formula
  desc "Beta channel of the agent-friendly c6s — Cerberus client"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.5.0-beta.1/c6s-beta_v0.5.0-beta.1_darwin_arm64.tar.gz"
  sha256 "53870aab87415a2bd164ce9a5f59faf30ded8a14889acda09159ed0bba032777"
  license :cannot_represent
  version_scheme 1

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "c6s-beta"
  end

  test do
    assert_match "c6s-beta v#{version} (beta)", shell_output("#{bin}/c6s-beta version")
    assert_equal "beta", shell_output("#{bin}/c6s-beta channel").strip
  end
end
