cask "zep-desktop" do
  version "2026.6.22"
  sha256 "7ec42d078f6ffb111bd156535a18ca589f2cb926b0f1cfb4444f8c8dd65fcf2a"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.22/Zep_2026.6.22_aarch64.dmg"
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