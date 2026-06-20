cask "zep-desktop" do
  version "2026.6.24"
  sha256 "01f67d59ce4cb90ddf2a6c9e2df46b775c04a9bdba601a45268b15a0f835cb67"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.24/Zep_2026.6.24_aarch64.dmg"
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