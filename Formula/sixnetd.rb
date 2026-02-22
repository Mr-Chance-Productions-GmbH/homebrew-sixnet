class Sixnetd < Formula
  desc "Privileged background daemon for the sixnet VPN client"
  homepage "https://github.com/Mr-Chance-Productions-GmbH/sixnetd"
  url "https://github.com/Mr-Chance-Productions-GmbH/sixnetd/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6b4962f815a40e4e3eae0116090912d7904aa36e778bc0eb8c2a685751fa1e0d"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"sixnetd", "./cmd/sixnetd"
  end

  service do
    run [opt_bin/"sixnetd"]
    keep_alive true
    require_root true
    log_path "/var/log/sixnetd.log"
    error_log_path "/var/log/sixnetd.log"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/sixnetd --version")
  end
end
