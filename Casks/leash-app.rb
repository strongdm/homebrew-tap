cask "leash-app" do
  version "1.1.0"
  sha256 "ba172ebe3dc03f70b286829bac5bd177c52f35f965777689d0452743ed790323"

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
