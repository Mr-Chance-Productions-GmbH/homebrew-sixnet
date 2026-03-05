class Sixnetd < Formula
  desc "Privileged background daemon for the sixnet VPN client"
  homepage "https://github.com/Mr-Chance-Productions-GmbH/sixnetd"
  url "https://github.com/Mr-Chance-Productions-GmbH/sixnetd/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "928b9ce9da77cc36c5ce63dc6d666727541c9d03e7024d13d8ba57fad796dad8"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-X main.version=#{version}", "-o", bin/"sixnetd", "./cmd/sixnetd"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/sixnetd --version")
  end
end
