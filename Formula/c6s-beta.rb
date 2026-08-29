class C6sBeta < Formula
  desc "Beta channel of the agent-friendly c6s — Cerberus client"
  homepage "https://c6s.whitekiwi.link"
  url "https://github.com/c6shq/homebrew-tap/releases/download/c6s-v0.4.0-beta.2/c6s-beta_v0.4.0-beta.2_darwin_arm64.tar.gz"
  sha256 "8c1feb1fffd7d0c495353b03f88e5e7b06cf9e527fdf5f0034fd6045cb47123d"
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
