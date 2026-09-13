cask "orchestra" do
  version "0.11.0"
  sha256 "87cdc30a70a2e8ebc643708405b64726041f50dbe380c26a5b180c5daf9a0733"

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
