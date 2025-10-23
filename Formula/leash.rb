class Leash < Formula
  desc "Security, visibility, and authorization for AI agents"
  homepage "https://github.com/strongdm/leash"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_darwin_arm64.tar.gz"
      sha256 "22f133f1c41eaa82a5852ba054c153f79e6d01cda52b999a0ebced71954878db"
    else
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_darwin_amd64.tar.gz"
      sha256 "e623ac93c39e00d469a5d18e097c50aac362c36352a7d3739e1c864519c437c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_linux_arm64.tar.gz"
      sha256 "cd9a1ac576ac1747e1c9430ee3fb640ec10fc59a940a81aedf44ad93860d8478"
    else
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_linux_amd64.tar.gz"
      sha256 "8e39cfa55948df6e9751fbe591ecd8c90f74cfb8cd2329b2caabb5753d2b5049"
    end
  end

  def install
    bin.install "leash"
  end

  test do
    system "bin/leash", "--version"
  end
end
