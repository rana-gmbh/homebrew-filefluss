cask "filefluss" do
  version "1.5.1"
  sha256 "a38da4d43c953751e4252f37c6295b64703f9eb8e47e5ebaffd1ab2b388404c6"

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
