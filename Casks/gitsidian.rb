cask "gitsidian" do
  arch arm: "-arm64", intel: ""

  version "0.8.0"
  on_arm do
    sha256 "bab218bc9827e3ecdc958b52ff1b6884b6825820fdf7ea4e187ae2a7e9c38bc0"
  end
  on_intel do
    sha256 "710656c3d9210f17152664d0280c3f00aa12b606219321538ef61234a69ac073"
  end

  url "https://github.com/WillBe89/gitsidian/releases/download/v#{version}/Gitsidian-#{version}#{arch}.dmg"
  name "Gitsidian"
  desc "Calm home for your repos, terminals, notes, and team"
  homepage "https://github.com/WillBe89/gitsidian"

  app "Gitsidian.app"

  zap trash: [
    "~/Library/Application Support/Gitsidian",
  ]
end
