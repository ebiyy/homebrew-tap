cask "traylingo" do
  version "0.1.3"
  sha256 "3e7ebc1c7653c6d758016718f949c0bf2a8057ad590712f5ee06b62b34ae4bdb"

  url "https://github.com/ebiyy/traylingo/releases/download/v#{version}/TrayLingo_#{version}_aarch64.dmg"
  name "TrayLingo"
  desc "macOS menu bar translation app powered by Claude AI"
  homepage "https://github.com/ebiyy/traylingo"

  depends_on arch: :arm64

  app "TrayLingo.app"

  zap trash: [
    "~/Library/Application Support/com.ebiyy.traylingo",
    "~/Library/Caches/com.ebiyy.traylingo",
    "~/Library/Logs/com.ebiyy.traylingo",
    "~/Library/Preferences/com.ebiyy.traylingo.plist",
  ]
end
