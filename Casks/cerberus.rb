cask "cerberus" do
  version "0.6.6"
  sha256 "f91b7d8677a26a248d045db642bf084b155761ce9c98b8e43d6e6d3922bb7aaa"

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
