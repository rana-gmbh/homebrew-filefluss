cask "filefluss" do
  version "1.4"
  sha256 "2940c6781edba7d280a5f259db2b8ab504723dd0baa97621b0c20351f502cfdf"

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
