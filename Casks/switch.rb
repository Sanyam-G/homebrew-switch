cask "switch" do
  version "0.3.9"
  sha256 "838c75d7b417fc23c23a390e767428239131fff49dbed33fe714b9d7f47066ad"

  url "https://github.com/Sanyam-G/switch/releases/download/v#{version}/Switch-#{version}.dmg",
      verified: "github.com/Sanyam-G/switch/"
  name "Switch"
  desc "Keyboard-driven window switcher that cycles windows, not apps"
  homepage "https://switch-dev.sanyamgarg.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Switch.app"

  zap trash: [
    "~/Library/Application Scripts/com.sanyamgarg.switch",
    "~/Library/Caches/com.sanyamgarg.switch",
    "~/Library/Containers/com.sanyamgarg.switch",
    "~/Library/Preferences/com.sanyamgarg.switch.plist",
    "~/Library/Saved Application State/com.sanyamgarg.switch.savedState",
  ]
end
