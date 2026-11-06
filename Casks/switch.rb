cask "switch" do
  version "0.3.23"
  sha256 "d9e3fbaa866a50500aca1b65a990bef87b2e6b21f5d908e0173126d852ee37fc"

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
