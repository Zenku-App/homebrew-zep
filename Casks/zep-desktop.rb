cask "zep-desktop" do
  version "2026.6.17"
  sha256 "7341104c1b57de3e335a5ac6e655464abf43a5869d01e730269223082ddf0d57"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.17/Zep_2026.6.17_aarch64.dmg"
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