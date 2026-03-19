cask "orchestra" do
  version "0.5.5"
  sha256 "e9a62dbc8c711b6f9e3fef1c0f63b26c3fc8a5f5302bc7e00444a37781951b8e"

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
