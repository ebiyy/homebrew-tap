cask "traylingo" do
  version "0.1.1"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

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
