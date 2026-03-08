cask "orchestra" do
  version "0.4.0"
  sha256 "3a5df7fda0bab349cb65f7ae8171dc7275316e66d29aa7563cca2ee4bab1bc80"

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
