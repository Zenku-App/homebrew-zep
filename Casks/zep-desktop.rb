cask "zep-desktop" do
  version "2026.6.18"
  sha256 "6a6f918111f9c8a123682fff69b6c8791466ec2838863def38e34f6a29da7399"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.18/Zep_2026.6.18_aarch64.dmg"
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