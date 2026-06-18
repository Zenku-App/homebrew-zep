cask "zep-desktop" do
  version "2026.6.19"
  sha256 "c529758bbb9f218caa65f354a9e642f4e11ae87fd0dd07fc5f1151a9852ded98"

  url "https://github.com/Zenku-App/homebrew-zep/releases/download/v2026.6.19/Zep_2026.6.19_aarch64.dmg"
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