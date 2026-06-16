cask "zep-desktop" do
  version "2026.6.16"
  sha256 "8a7507b6fbbb42de93ed9538f40756da741087df9f0db51ef8444bd082a9a723"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.16/Zep_2026.6.16_aarch64.dmg"
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