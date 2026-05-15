cask "filefluss" do
  version "1.1"
  sha256 "c2d566c6005ce3b0a840d209ea8177c19c19a4b0e26182c3cf1225d26b85bf0d"

  url "https://github.com/rana-gmbh/filefluss/releases/download/v#{version}/FileFluss-v#{version}.dmg"
  name "FileFluss"
  desc "Dual-panel file manager with multi-cloud support"
  homepage "https://github.com/rana-gmbh/filefluss"

  depends_on macos: ">= :sonoma"

  app "FileFluss.app"

  zap trash: [
    "~/Library/Preferences/com.rana-gmbh.FileFluss.plist",
    "~/Library/Caches/com.rana-gmbh.FileFluss",
    "~/Library/Application Support/com.rana-gmbh.FileFluss",
  ]
end
