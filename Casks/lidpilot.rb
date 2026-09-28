cask "lidpilot" do
  version "2.0.2"
  sha256 "e3209bfb9aeb70d2c560ed3dd47b42deae6182bf4c59deba0a44d8d974fabae6"

  url "https://github.com/Marios1111/lidpilot/releases/download/v2.0.2/LidPilot-2.0.2.dmg"
  name "LidPilot"
  desc "Control bounded keep-awake sessions from the menu bar"
  homepage "https://lidpilot.app/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "LidPilot.app"

  caveats <<~EOS
    Before Homebrew removes or replaces LidPilot, use the app to confirm Turn Off,
    disable Launch at login, remove the helper in Settings → Helper & Recovery,
    wait for LidPilot to confirm removal, then quit normally. Removing the app
    directly through Homebrew without this cleanup is unsupported.
  EOS
end
