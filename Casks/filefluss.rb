cask "filefluss" do
  version "1.1"
  sha256 "a02e9e0455b0c6bb12f7d8d58bbe74b73ee913532f1d88d8f0b50833dcc7cf96"

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
