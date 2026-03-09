cask "sixnet-client" do
  version "0.1.0"
  sha256 "6713f5a5351f9ce3e2f8f4b001fb61e4c863bf87b7a8d4c41fd089d44250a68c"
  url "https://github.com/Mr-Chance-Productions-GmbH/sixnet-client/releases/download/v0.1.0/SixnetClient-0.1.0.dmg"

  name "Sixnet Client"
  desc "macOS menu bar VPN client for sixnet"
  homepage "https://github.com/Mr-Chance-Productions-GmbH/sixnet-client"

  depends_on formula: "Mr-Chance-Productions-GmbH/sixnet/sixnetd"

  app "SixnetClient.app"
end
