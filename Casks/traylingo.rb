cask "traylingo" do
  version "0.1.4"
  sha256 "651e3cd774117638e1dd885992ee8993a18e7e485fa39e1ced3de25c4f69ee22"

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
