cask "leash-app" do
  version "0.0.1"
  sha256 "48b197ff08c9d05f69fd3e25cb43ed8bc5045c9fe711bfb309dca6fb97b36977"

  url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_app_#{version}.pkg"
  name "Leash-App"
  desc "Leash helper app for macOS"
  homepage "https://leash.strongdm.ai"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on macos: ">= :sonoma"
  depends_on formula: "leash"

  auto_updates true
  pkg "leash_app_#{version}.pkg"

  # No zap stanza required
end
