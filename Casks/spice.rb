cask "spice" do
  arch arm: "arm64", intel: "x86_64"

  version "2.2.7"
  sha256 "97f5c8d7973e2f8d1a960fce9046c651c9ec3afca8e6e3e249de3027b0c7aec6"

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
