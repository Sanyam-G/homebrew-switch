cask "switch" do
  version "0.3.20"
  sha256 "f30273967ddd54eeecd65acd074efcb360241d3074f5bebc96b0c3ccc153a762"

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
