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

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Portman.app"]
  end

  zap trash: [
    "~/.local/share/portman",
  ]

  caveats <<~EOS
    Portman is not signed with an Apple Developer certificate.
    The quarantine attribute has been removed automatically.
    If macOS still shows a warning, run:
      xattr -cr /Applications/Portman.app
  EOS
end
