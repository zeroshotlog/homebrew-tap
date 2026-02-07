cask "portman" do
  version "0.1.0"
  sha256 "67f92fbaf63801e1814031b26176582494c7f9a7725c1eaa5e811e0c5c348a8f"

  url "https://github.com/zeroshotlog/portman/releases/download/v#{version}/Portman_#{version}_aarch64.dmg"
  name "Portman"
  desc "Local port management tool for macOS"
  homepage "https://zeroshotlog.github.io/portman/"

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "Portman.app"

  zap trash: [
    "~/.local/share/portman",
  ]

  caveats <<~EOS
    Portman is not signed. On first launch:
    1. Right-click on Portman.app
    2. Select "Open"
    3. Click "Open" in the dialog
  EOS
end
