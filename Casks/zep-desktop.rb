cask "zep-desktop" do
  version "2026.6.12"
  sha256 "ab1e6eb878e2d5a0a8c609c3a5b5554c9c6733dcc000ec28d42471b176d01350"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.12/Zep_2026.6.12_aarch64.dmg"
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