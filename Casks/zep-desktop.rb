cask "zep-desktop" do
  version "2026.6.20"
  sha256 "d384f11333c8706ae2db47430bae9c24b62a13f33a670748c18bc19c30969d78"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.20/Zep_2026.6.20_aarch64.dmg"
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