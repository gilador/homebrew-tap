cask "gas" do
  version "1.0.32"
  sha256 "e5653b2107c57e00f9bb44e3d5aa0270e2b3bde36efab15225c692a81636e36b"

  url "https://github.com/gilador/gas/releases/download/v#{version}/gas-#{version}.dmg"
  name "gas"
  desc "Claude, Codex and Grok plan limits in the menu bar"
  homepage "https://github.com/gilador/gas"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "gas.app"

  zap trash: [
    "~/Library/Application Support/gas",
    "~/Library/Preferences/com.gilad.agentusage.plist",
  ]

  caveats <<~EOS
    gas is free and open source, so it isn't notarized by Apple.
    The first time you open it, macOS blocks it. To allow it:
      1. Open gas from Applications, and click Done when macOS warns you.
      2. Open System Settings → Privacy & Security.
      3. Scroll to Security, and click "Open Anyway" next to gas.
    gas then lives in the menu bar and updates itself.
  EOS
end
