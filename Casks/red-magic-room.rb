cask "red-magic-room" do
  version "1.0.2"
  sha256 "e1a46958cd2b7099f4f32e3815f302613419442aa44efbc4776b7107573f3e87"

  url "https://github.com/warike/red-magic-room/releases/download/v#{version}/RedMagicRoom.zip"
  name "Red Magic Room"
  desc "Minimalist menu bar app for ambient noise generation"
  homepage "https://github.com/warike/red-magic-room"

  depends_on macos: ">= :sonoma"

  app "RedMagicRoom.app"

  zap trash: [
    "~/Library/Preferences/com.redmagicroom.app.plist",
  ]
end
