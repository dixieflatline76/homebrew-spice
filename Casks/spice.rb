cask "spice" do
  arch arm: "arm64", intel: "x86_64"

  version "2.5.8"
  sha256 "a9980842858cc9f6c69d6382c52e1c24d9eab5d059c1c0cbadf556cfbdaed569"

  url "https://github.com/dixieflatline76/Spice/releases/download/v#{version}/Spice-#{version}-macos-#{arch}.dmg"
  name "Spice"
  desc "Highly-concurrent, plugin-driven desktop environment engine"
  homepage "https://spicebox.dev"

  auto_updates true

  app "Spice.app"
  app "Spice Wallpaper Manager Extension.app"

  zap trash: [
    "~/Library/Application Support/Spice",
    "~/Library/Preferences/com.dixieflatline76.spice.plist",
    "~/Library/Saved Application State/com.dixieflatline76.spice.savedState",
  ]
end
