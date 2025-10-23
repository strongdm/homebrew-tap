cask "leash-app" do
  version "1.0.0"
  sha256 "e7a5e01b0d966160f5f0d831cde912ed102a9054802a61fae09c09df976c1042"

  url "https://github.com/strongdm/leash/releases/download/v#{version}/leash_app_#{version}.pkg"
  name "Leash-App"
  desc "Leash helper app"
  homepage "https://github.com/strongdm/leash"

  livecheck do
    url :url
    strategy :github_releases
  end

  auto_updates true
  depends_on macos: ">= :sonoma"
  depends_on formula: "leash"

  pkg "leash_app_#{version}.pkg"

  uninstall pkgutil: "com.strongdm.leash"

  # No zap stanza required
end
