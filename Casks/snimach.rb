cask "snimach" do
  version "0.1.1"
  sha256 "5590d3cc66229d670bab40bd004640b51ccb27bae04160505e3e3890060972f8"

  url "https://github.com/infomiho/snimach/releases/download/v#{version}/Snimach-#{version}-macOS-arm64.dmg"
  name "Snimach"
  desc "Menubar screenshots: capture with a hotkey, annotate, and paste"
  homepage "https://snimach.miho.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Snimach.app"

  uninstall quit:       "dev.twoducks.snimach",
            login_item: "Snimach"

  zap trash: [
    "~/Library/Application Support/Snimach",
    "~/Library/Caches/dev.twoducks.snimach",
    "~/Library/HTTPStorages/dev.twoducks.snimach",
    "~/Library/Preferences/dev.twoducks.snimach.plist",
  ]
end
