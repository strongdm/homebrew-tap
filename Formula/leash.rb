class Leash < Formula
  desc "Security, visibility, and authorization for AI agents"
  homepage "https://github.com/strongdm/leash"
  version "1.1.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_darwin_arm64.tar.gz"
      sha256 "0b57d37a8a052d0935af121601e22533b7dfca91a5ec286ab971b0f155dc906e"
    else
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_darwin_amd64.tar.gz"
      sha256 "5f62752dd2f8b07d5030de6444479dcbd5e71f32f0990475fb34d44b2b71f5c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_linux_arm64.tar.gz"
      sha256 "f7eb89faa051a673fbb8fb7ca836ae2c0bd743e59d4bb04e38ebec9e7e3bae03"
    else
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_linux_amd64.tar.gz"
      sha256 "d813d5b85b164043ed6128618ba8b0de15b1d9deddb37a11d16f042a68d7da55"
    end
  end

  def install
    bin.install "leash"
  end

  test do
    system "bin/leash", "--version"
  end
end
