cask "zep-desktop" do
  version "2026.6.23"
  sha256 "b3408fb3d27db2eaa825e24861f71fd3b4ec2be37a33d956932338c6b7d53082"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.23/Zep_2026.6.23_aarch64.dmg"
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