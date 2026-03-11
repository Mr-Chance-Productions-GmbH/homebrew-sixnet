cask "sixnet-client-dev" do
  version "2026.03.11.4"
  sha256 "7af0e968f1271573fa8f569fc4916f9992f5bf1cb7a14fb763ce6f88f9ff7879"
  url "https://github.com/Mr-Chance-Productions-GmbH/sixnet-client/releases/download/dev/SixnetClient-dev-2026.03.11.4.dmg"

  name "Sixnet Client (dev)"
  desc "Development channel — macOS menu bar VPN client for sixnet"
  homepage "https://github.com/Mr-Chance-Productions-GmbH/sixnet-client"

  depends_on formula: "Mr-Chance-Productions-GmbH/sixnet/sixnetd"

  app "SixnetClient Dev.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-rd", "com.apple.quarantine", "#{appdir}/SixnetClient Dev.app"]
  end
end
