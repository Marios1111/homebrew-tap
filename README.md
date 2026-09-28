# LidPilot Homebrew tap

Install LidPilot for Apple Silicon, macOS 15 or later:

```sh
brew install --cask Marios1111/tap/lidpilot
```

Or tap once, then use the short command:

```sh
brew tap Marios1111/tap
brew install --cask lidpilot
```

Free and open source. [Website](https://lidpilot.app/) · [Source](https://github.com/Marios1111/lidpilot)

Before uninstalling, reinstalling, or replacing LidPilot: Turn Off, disable Launch at login, Remove Helper in Settings, and Quit. Wait for confirmed cleanup first. [Cleanup guide](https://github.com/Marios1111/lidpilot/blob/main/docs/HOMEBREW.md).

V2 defaults to Homebrew update ownership for a detected Homebrew install. Settings → Updates lets you choose Homebrew, in-app Sparkle, or Manual; Homebrew/manual ownership disables Sparkle checks.

After the cleanup above, upgrade with:

```sh
brew update
brew upgrade --cask --greedy Marios1111/tap/lidpilot
```

The cask retains `auto_updates true` because Sparkle remains an optional owner, so `--greedy` includes it in the upgrade. Homebrew does not automatically clean up the privileged helper or sleep override. Open the updated app and enable its helper again for closed-lid modes.
