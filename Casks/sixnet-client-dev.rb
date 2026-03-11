cask "sixnet-client-dev" do
  version "2026.03.11.1"
  sha256 "f9292518a07114cfd3ed40860fef074dfd02012d3f4981e382be459125c780b6"
  url "https://github.com/Mr-Chance-Productions-GmbH/sixnet-client/releases/download/dev/SixnetClient-dev-2026.03.11.1.dmg"

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
