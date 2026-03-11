cask "sixnet-client-dev" do
  version "2026.03.11.5"
  sha256 "387fbdf13589744cdb528215e421174fa6a2485717d28668523cd456f0381924"
  url "https://github.com/Mr-Chance-Productions-GmbH/sixnet-client/releases/download/dev/SixnetClient-dev-2026.03.11.5.dmg"

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
