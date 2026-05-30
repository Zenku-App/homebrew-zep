cask "zep-desktop" do
  version "2026.5.1"
  sha256 "116fd798e7de11e65b1117d81ddba2d77ca66495a001288fa488e06f6f1a43a6"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.5.1/Zep_0.1.0_aarch64.dmg"
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