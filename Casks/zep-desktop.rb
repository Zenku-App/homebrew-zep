cask "zep-desktop" do
  version "2026.5.2"
  sha256 "bd1ec1a2478455e66a604f2159ce878d6c822a8dc6de7db67cabc9f33a0a2654"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.5.2/Zep_2026.5.2_aarch64.dmg"
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