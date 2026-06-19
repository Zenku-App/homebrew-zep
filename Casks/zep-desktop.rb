cask "zep-desktop" do
  version "2026.6.21"
  sha256 "bf9fee54f0dc41ec135bdf015effbf87e33ddcc452e8c5ad68f37441fa3ab67e"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.21/Zep_2026.6.21_aarch64.dmg"
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