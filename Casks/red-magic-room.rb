cask "red-magic-room" do
  version "1.0.2"
  sha256 "92339d2185cffd27868f86ecc0406a8f32dab6c0b2ad1a5a479641c4ba238b2a"

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
