cask "sixnet-client" do
  # Stub — release pending. Fill in version, sha256, and url once
  # SixnetClient.app is built and uploaded as a GitHub release asset.

  # version ""
  # sha256 ""
  # url "https://github.com/Mr-Chance-Productions-GmbH/sixnet-client/releases/download/v#{version}/SixnetClient.dmg"

  name "Sixnet Client"
  desc "macOS menu bar VPN client for sixnet"
  homepage "https://github.com/Mr-Chance-Productions-GmbH/sixnet-client"

  depends_on formula: "Mr-Chance-Productions-GmbH/sixnet/sixnetd"

  # app "SixnetClient.app"
end
