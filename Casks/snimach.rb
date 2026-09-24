cask "snimach" do
  version "0.1.2"
  sha256 "1c13474b9dc84f07cb0ae0d28af0b4de47c8b2e309e278d37c294a0a5acb61aa"

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
