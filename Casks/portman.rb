cask "portman" do
  version "0.1.2"
  sha256 "dc545d3508640e0b73122d525a6f656b22f1054c7f50e6f6a692fbf9fa2f9095"

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
