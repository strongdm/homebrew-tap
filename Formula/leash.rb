class Leash < Formula
  desc "Security, visibility, and authorization for AI agents"
  homepage "https://github.com/strongdm/leash"
  version "1.1.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_darwin_arm64.tar.gz"
      sha256 "30854babe64de74a7c0c3fbfa3abb224b11bcd1edd81c45787c8ef9d022401ef"
    else
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_darwin_amd64.tar.gz"
      sha256 "a492d11bb1e3cfbc3cf86d7f40ece72d30e279bf0fbf89087faba8473b57d6a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_linux_arm64.tar.gz"
      sha256 "b5c790ff25e6540f2abec72cca7e53da3b119362e7ad3a874f55183b63d30640"
    else
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_linux_amd64.tar.gz"
      sha256 "62e644553133c34d79f0fe6d0bd3ac685ae7f1210f0c1bea8a9c0f60ccd170da"
    end
  end

  def install
    bin.install "leash"
  end

  test do
    system "bin/leash", "--version"
  end
end
