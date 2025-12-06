cask "traylingo" do
  version "0.1.1"
  sha256 "ced2c3cc9e18c3f3119891434608157e1142f8c4e2c4f685a5ce561cc7ee2ae3"

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
