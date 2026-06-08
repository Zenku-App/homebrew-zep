cask "zep-desktop" do
  version "2026.6.10"
  sha256 "aa09611e77dc784a7a9dff520c6c95295784a111786be0c2f7828273943f276f"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.10/Zep_2026.6.10_aarch64.dmg"
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