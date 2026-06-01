cask "zep-desktop" do
  version "2026.6.1"
  sha256 "7324cd69d6baa8bdef148ad4ba39ddb200bfbfdfef5a781c07a1de72541fd911"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.1/Zep_2026.6.1_aarch64.dmg"
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