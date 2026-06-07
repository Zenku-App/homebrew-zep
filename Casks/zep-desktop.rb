cask "zep-desktop" do
  version "2026.6.9"
  sha256 "a2d0840c77982cb8b40f7403378ca226ca83a34a0909935d81ef8e53c554eb91"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.9/Zep_2026.6.9_aarch64.dmg"
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