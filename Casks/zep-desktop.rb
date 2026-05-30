cask "zep-desktop" do
  version "2026.5.1"
  sha256 "4dfca1bd0930c01755a087e300d1e6443644047ef78c3692701cf717326c5c76"

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