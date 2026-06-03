cask "zep-desktop" do
  version "2026.6.4"
  sha256 "460f540d05be09e1790a2edc8c6bc266ade4a2b7176298a04d134e72ce580c45"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.4/Zep_2026.6.4_aarch64.dmg"
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