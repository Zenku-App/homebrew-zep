cask "zep-desktop" do
  version "2026.5.1"
  sha256 "4bda8cde8b02a7c007bc82d7cbf6a58d17d82e3b7cb8e51ea68477f04b654098"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.5.1/Zep_2026.5.1_aarch64.dmg"
  name "Zep"
  desc "Zep desktop app"
  homepage "https://github.com/Zenku-App/homebrew-zep"

  depends_on macos: ">= :ventura"

  app "Zep.app"

  zap trash: [
    "~/Library/Application Support/com.example.zep",
    "~/Library/Caches/com.example.zep",
    "~/Library/Preferences/com.example.zep.plist",
    "~/Library/Logs/com.example.zep",
  ]
end