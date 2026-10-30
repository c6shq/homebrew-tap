cask "cerberus" do
  version "0.7.8"
  sha256 "2c25645a5851cc51aa9cf03cc24f8fec0536137a61aa5d5f084b2fb921f62c4b"

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
