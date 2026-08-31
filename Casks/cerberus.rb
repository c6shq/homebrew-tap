cask "cerberus" do
  version "0.5.4"
  sha256 "c2684c0e48aac165731e8b4283d2c7d3c510cc63e65b28e597adcb40ef25bc7f"

  url "https://github.com/c6shq/homebrew-tap/releases/download/cerberus-v#{version}/Cerberus_#{version}_darwin_universal.zip"
  name "Cerberus"
  desc "Native encrypted vault client for c6s"
  homepage "https://c6s.whitekiwi.link/"

  livecheck do
    url :url
    regex(/^cerberus[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "Cerberus.app"

  zap trash: [
    "~/Library/Application Scripts/link.whitekiwi.c6s.desktop",
    "~/Library/Containers/link.whitekiwi.c6s.desktop",
  ]
end
