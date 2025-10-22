class Leash < Formula
  desc "Security, visibility, and authorization for AI agents"
  homepage "https://github.com/strongdm/leash"
  version "0.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_darwin_arm64.tar.gz"
      sha256 "f78431619e71d58b03808c6a8247c244421d7858e2573f984d232711fe8133d1"
    else
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_darwin_amd64.tar.gz"
      sha256 "9aca435d793098d16e3d3ee3979d548e792314244279a00ab5f20dda7f1b3322"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_linux_arm64.tar.gz"
      sha256 "32432cb1bfc87029afd5321161f199199c00cdddaac618b6242f729a7bb2e05c"
    else
      url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_#{version}_linux_amd64.tar.gz"
      sha256 "e4dc2dac2c4793f9582a38785779c86620624c8d19755cc518649d7746f93716"
    end
  end

  def install
    bin.install "leash"
  end

  test do
    system "bin/leash", "--version"
  end
end
