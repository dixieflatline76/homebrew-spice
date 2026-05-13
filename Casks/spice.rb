cask "spice" do
  arch arm: "arm64", intel: "x86_64"

  version "2.4.1"
  sha256 "9d62d2ac0eb80263ddb2b498e0fd41ba747b7cc08df7d9ae394bb42ea3d280dd"

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
