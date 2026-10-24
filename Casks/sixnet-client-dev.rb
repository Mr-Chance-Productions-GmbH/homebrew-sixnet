cask "sixnet-client-dev" do
  version "2026.10.24.6"
  sha256 "ec4a56045ecaf28730a44bc1f56409a3adfdf8de2425e09a40c43513ef47f00d"
  url "https://github.com/Mr-Chance-Productions-GmbH/sixnet-client/releases/download/dev/SixnetClient-dev-2026.10.24.6.dmg"

  name "Sixnet Client (dev)"
  desc "Development channel — macOS menu bar VPN client for sixnet"
  homepage "https://github.com/Mr-Chance-Productions-GmbH/sixnet-client"

  depends_on formula: "Mr-Chance-Productions-GmbH/sixnet/sixnetd"

  app "SixnetClient Dev.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "{{appdir}}/SixnetClient Dev.app"]
  end
end
