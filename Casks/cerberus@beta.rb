cask "cerberus@beta" do
  version "0.6.0-beta.2"
  sha256 "69875cb2a416de853fec1aebee7200c975fbc4edbcc60f46167b38769e58e406"

  url "https://github.com/c6shq/homebrew-tap/releases/download/cerberus-beta-v#{version}/Cerberus-Beta_#{version}_darwin_universal.zip"
  name "Cerberus Beta"
  desc "Concurrent beta of the native encrypted vault client for c6s"
  homepage "https://c6s.whitekiwi.link/"

  livecheck do
    url :url
    regex(/^cerberus-beta[._-]v?(.+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "Cerberus Beta.app"

  zap trash: [
    "~/Library/Application Scripts/link.whitekiwi.c6s.desktop.beta",
    "~/Library/Containers/link.whitekiwi.c6s.desktop.beta",
  ]
end
