cask "diktafon" do
  version "0.4.0"
  sha256 "006c01f15984c3220c8cd7ffa6e0006e9a63f6764e00b59ba04cc327864cf7e5"

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

  uninstall quit: "com.infomiho.diktafon"

  zap trash: [
    "~/Library/Application Support/diktafon",
    "~/Library/Caches/com.infomiho.diktafon",
    "~/Library/HTTPStorages/com.infomiho.diktafon",
    "~/Library/Preferences/com.infomiho.diktafon.plist",
    "~/Library/Saved Application State/com.infomiho.diktafon.savedState",
  ]
end
