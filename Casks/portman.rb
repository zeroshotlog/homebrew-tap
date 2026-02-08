cask "portman" do
  version "0.1.2"
  sha256 "34a17655f96b5e3cf82522dd160932e848d79da20b7a871cd69f0434cbf1dbc1"

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
