cask "lidpilot" do
  version "2.0.1"
  sha256 "7c75756a8b8c71e0f5718699089f569c633102130fa25fc7bf05f897d6b2eb00"

  url "https://github.com/Marios1111/lidpilot/releases/download/v2.0.1/LidPilot-2.0.1.dmg"
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
