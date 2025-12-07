cask "traylingo" do
  version "0.1.2"
  sha256 "94d8b186be6c40ae1362f2006e0789156f91c619418282126fd19c14f58106af"

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
