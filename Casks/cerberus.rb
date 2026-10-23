cask "cerberus" do
  version "0.7.5"
  sha256 "49840ed5efd13847e7ede1b6425703f418a71eb9f3362feae5f9ab74065b8ea6"

  url "https://github.com/c6shq/homebrew-tap/releases/download/cerberus-v#{version}/Cerberus_#{version}_darwin_universal.zip"
  name "Cerberus"
  desc "Native encrypted vault client for c6s"
  homepage "https://c6s.app/"

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
