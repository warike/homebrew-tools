cask "red-magic-room" do
  version "1.0.0"
  sha256 "da4283a4a18bb1ba536aa162205979c735579e66a71c4a604c74a04e308fd82d"

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
