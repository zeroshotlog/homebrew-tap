cask "orchestra" do
  version "0.3.2"
  sha256 "1677637ab57d8d63d1c6d598d99f528565118461155b64e1c41b3f09ea96baf3"

  url "https://github.com/zeroshotlog/orchestra/releases/download/v#{version}/Orchestra_#{version}_aarch64.dmg"
  name "Orchestra"
  desc "AI coding agent session monitor for macOS"
  homepage "https://zeroshotlog.github.io/orchestra/"

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "Orchestra.app"

  zap trash: [
    "~/Library/Application Support/dev.orchestra.desktop",
    "~/Library/Preferences/dev.orchestra.desktop.plist",
  ]
end
