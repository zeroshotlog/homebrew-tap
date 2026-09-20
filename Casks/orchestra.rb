cask "orchestra" do
  version "0.13.0"
  sha256 "10fb18f4ca9c4ee13fdfb808b55ffd4eeeff66da19ef4605031b1a084cb033db"

  url "https://github.com/zeroshotlog/orchestra/releases/download/v#{version}/Orchestra_#{version}_aarch64.dmg"
  name "Orchestra"
  desc "AI coding agent session monitor for macOS"
  homepage "https://zeroshotlog.github.io/orchestra/"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Orchestra.app"

  zap trash: [
    "~/Library/Application Support/dev.orchestra.desktop",
    "~/Library/Preferences/dev.orchestra.desktop.plist",
  ]
end
