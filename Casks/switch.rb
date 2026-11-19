cask "switch" do
  version "0.3.24"
  sha256 "e7e3ce0d81f6bf30f00e9c73470acad7601fef8546d741f637332fd93b166791"

  url "https://github.com/Sanyam-G/switch/releases/download/v#{version}/Switch-#{version}.dmg"
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
