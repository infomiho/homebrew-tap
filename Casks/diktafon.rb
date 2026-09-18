cask "diktafon" do
  version "0.1.2"
  sha256 "78ddda8bbd3a46806ba7c87934919ddfc76cbc82f622ff2aea05968cd29c13e8"

  url "https://github.com/infomiho/diktafon/releases/download/v#{version}/diktafon-#{version}-macOS-arm64.dmg"
  name "diktafon"
  desc "Local-only dictation: hold a hotkey, speak, and polished text is pasted"
  homepage "https://diktafon.miho.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
