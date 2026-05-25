cask "spice" do
  arch arm: "arm64", intel: "x86_64"

  version "2.5.3"
  sha256 "b72b58828bc8e10ea42826ce1c7ccf53c3cafcb461725ad23abdb5d4a881c406"

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
