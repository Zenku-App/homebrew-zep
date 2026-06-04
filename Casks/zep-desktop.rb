cask "zep-desktop" do
  version "2026.6.5"
  sha256 "3a1a4821a25ae5bef25a33477803c0d118a1bb601a6e107943ab198e8429aa94"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.5/Zep_2026.6.5_aarch64.dmg"
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