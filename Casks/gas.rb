cask "gas" do
  version "1.0.31"
  sha256 "58fa24869fe9d33c4cc88c725b39a1bb598cb34ac7f373e4cacf209df9e29acb"

  url "https://github.com/gilador/gas/releases/download/v#{version}/gas-#{version}.dmg"
  name "gas"
  desc "Claude, Codex and Grok plan limits in the menu bar"
  homepage "https://github.com/gilador/gas"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "gas.app"

  zap trash: [
    "~/Library/Application Support/gas",
    "~/Library/Preferences/com.gilad.agentusage.plist",
  ]
end
