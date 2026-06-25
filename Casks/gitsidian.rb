cask "gitsidian" do
  arch arm: "-arm64", intel: ""

  version "0.8.1"
  on_arm do
    sha256 "0bca8088013ac831b654d5a584a3d109a698915785ca4a22fc1c08db874796fe"
  end
  on_intel do
    sha256 "1196a386411e320df9028562da96e780bc19df3e9b0a64810a3c3d8fbc98ba1e"
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
