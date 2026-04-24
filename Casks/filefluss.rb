cask "filefluss" do
  version "0.10"
  sha256 "71f567d8c0b6a7350925021f971b5966af7b0c59b06c67b2440721da99a2d874"

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
