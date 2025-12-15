class Leash < Formula
  desc "Security, visibility, and authorization for AI agents"
  homepage "https://github.com/strongdm/leash"
  version "1.1.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_darwin_arm64.tar.gz"
      sha256 "9c37785c70104a86f714abd9f179e97246126fe79ed3dea9ceea2a0d5ac6e0d3"
    else
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_darwin_amd64.tar.gz"
      sha256 "a7c51454c3982169ff963b86c63308dfc533113a1c7eaa455efd63464073608c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_linux_arm64.tar.gz"
      sha256 "537b0affd8169b9b498f22722fca44dea1a3b0e4e1745e38516d5e2bdeb74a83"
    else
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_linux_amd64.tar.gz"
      sha256 "e17492ee92998dfa4b28c06054fa37813f4ae7d7d9bc18a208d3b47792f0e960"
    end
  end

  def install
    bin.install "leash"
  end

  test do
    system "bin/leash", "--version"
  end
end
