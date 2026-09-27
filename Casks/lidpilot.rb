cask "lidpilot" do
  version "1.0.0"
  sha256 "ef4b33a5009a6415221bf35a7c009737439d92db451aac794bbecc787f275fbb"

  url "https://github.com/Marios1111/lidpilot/releases/download/v1.0.0/LidPilot-1.0.0.dmg"
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
