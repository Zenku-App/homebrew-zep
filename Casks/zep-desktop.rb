cask "zep-desktop" do
  version "2026.6.2"
  sha256 "b8bb6529fd79ce3885da082cb0ea8d59913436077614a89c0b09945d45396999"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.2/Zep_2026.6.2_aarch64.dmg"
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