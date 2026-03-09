cask "sixnet-client" do
  version "0.1.0"
  sha256 "4397ac3bd9ece19df7bb02e3763781dc66f7fad03e7d146b04fa5f061c682549"
  url "https://github.com/Mr-Chance-Productions-GmbH/sixnet-client/releases/download/v0.1.0/SixnetClient-0.1.0.dmg"

  name "Sixnet Client"
  desc "macOS menu bar VPN client for sixnet"
  homepage "https://github.com/Mr-Chance-Productions-GmbH/sixnet-client"

  depends_on formula: "Mr-Chance-Productions-GmbH/sixnet/sixnetd"

  app "SixnetClient.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-rd", "com.apple.quarantine", "#{appdir}/SixnetClient.app"]
  end
end
