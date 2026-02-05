cask "red-magic-room" do
  version "1.0.0"
  sha256 "59fb0dc558c00c5e42756271acffae86b09f3df3c4771d3b9b49c1c42b9e34d5"

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
