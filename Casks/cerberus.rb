cask "cerberus" do
  version "0.5.8"
  sha256 "97186ef407163c988d7ebc5328d21614a26c6acfe8b900c94de30620578f3991"

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
