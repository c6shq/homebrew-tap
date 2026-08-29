cask "cerberus" do
  version "0.5.1"
  sha256 "448db77aab80aa5d8c4af735a5151f6fe1ceb8c046de809a55191495563b36ca"

  url "https://github.com/c6shq/homebrew-tap/releases/download/cerberus-v#{version}/Cerberus_#{version}_darwin_universal.zip"
  name "Cerberus"
  desc "Native encrypted vault client for c6s"
  homepage "https://c6s.whitekiwi.link/"

  depends_on macos: :sonoma

  app "c6s.app", target: "Cerberus.app"

  zap trash: [
    "~/Library/Application Scripts/link.whitekiwi.c6s.desktop",
    "~/Library/Containers/link.whitekiwi.c6s.desktop",
  ]
end
