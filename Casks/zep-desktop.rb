cask "zep-desktop" do
  version "2026.6.15"
  sha256 "3dff960f517c932f86b93d65c42da2814629889f4e35fcec7a494087e4a6df0b"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.15/Zep_2026.6.15_aarch64.dmg"
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