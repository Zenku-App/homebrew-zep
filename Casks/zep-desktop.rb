cask "zep-desktop" do
  version "2026.6.13"
  sha256 "033d0eb3b0a0466bcda13a92ad1c2485762b3c468485d96fd5087d8ea3469cf5"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.13/Zep_2026.6.13_aarch64.dmg"
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