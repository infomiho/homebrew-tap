cask "diktafon" do
  version "0.2.0"
  sha256 "e86592cb614334436b839b9e968bda89ce134a2afd1c7f5fd20e991fd342a413"

  url "https://github.com/infomiho/diktafon/releases/download/v#{version}/diktafon-#{version}-macOS-arm64.dmg"
  name "diktafon"
  desc "Local-only dictation: hold a hotkey, speak, and polished text is pasted"
  homepage "https://diktafon.miho.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "diktafon.app"

  uninstall quit:       "com.infomiho.diktafon",
            login_item: "diktafon"

  zap trash: [
    "~/Library/Application Support/diktafon",
    "~/Library/Caches/com.infomiho.diktafon",
    "~/Library/HTTPStorages/com.infomiho.diktafon",
    "~/Library/Preferences/com.infomiho.diktafon.plist",
  ]
end
