cask "filefluss" do
  version "1.5"
  sha256 "74e0d2e38470250071f88b16c80546b53e2d1948f246a8bbedac09600cf3d289"

  url "https://github.com/rana-gmbh/filefluss/releases/download/v#{version}/FileFluss-v#{version}.dmg"
  name "FileFluss"
  desc "Dual-panel file manager with multi-cloud support"
  homepage "https://github.com/rana-gmbh/filefluss"

  auto_updates true

  depends_on macos: :sonoma

  app "FileFluss.app"

  zap trash: [
    "~/Library/Application Support/com.rana-gmbh.FileFluss",
    "~/Library/Caches/com.rana-gmbh.FileFluss",
    "~/Library/Preferences/com.rana-gmbh.FileFluss.plist",
  ]
end
