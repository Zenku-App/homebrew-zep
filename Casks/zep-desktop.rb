cask "zep-desktop" do
  version "2026.6.8"
  sha256 "d80fd829fe8ff166e59d7f7c2de8fac6aae6348cc117b8d997c646337f0e6223"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.8/Zep_2026.6.8_aarch64.dmg"
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