cask "red-magic-room" do
  version "1.0.2"
  sha256 "641988639fd7477c4e7efd61fe83a63be5602cc48cb20f0ef207e609c22e3df8"

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
