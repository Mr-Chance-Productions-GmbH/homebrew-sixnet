cask "sixnet-client" do
  version "0.2.0"
  sha256 "97c670833db7530ecb736f20323099c498d717fcf9bb96aedc5f94f4f2cef0d4"
  url "https://github.com/Mr-Chance-Productions-GmbH/sixnet-client/releases/download/v0.2.0/SixnetClient-0.2.0.dmg"

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
