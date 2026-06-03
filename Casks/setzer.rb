cask "setzer" do
  version "0.1.0"
  sha256 "06c43de2027bf8ae7f4053114a1a23c701a769eec168423ca65cfb0856fc3205"
  url "https://github.com/crux/setzer/releases/download/v#{version}/Setzer-#{version}-macos.zip"

  name "Setzer"
  desc "Local compositor for static sites — edit and publish via Git"
  homepage "https://github.com/crux/setzer"

  app "Setzer.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-rd", "com.apple.quarantine", "#{appdir}/Setzer.app"]
  end
end
