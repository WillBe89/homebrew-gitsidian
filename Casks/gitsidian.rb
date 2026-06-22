cask "gitsidian" do
  arch arm: "-arm64", intel: ""

  version "0.4.6"
  on_arm do
    sha256 "2fbd54132a5f3cca532f1c38fd0bd6fc718525094428f56ab98242d307366adc"
  end
  on_intel do
    sha256 "b0c21921ac35f11f2d28e7637600a009cde7ccb3e7dd1745a20415fe6a43b37a"
  end

  url "https://github.com/WillBe89/gitsidian/releases/download/v#{version}/Gitsidian-#{version}#{arch}.dmg"
  name "Gitsidian"
  desc "Friendly multi-tab cockpit for running AI coding assistants in your repos"
  homepage "https://github.com/WillBe89/gitsidian"

  app "Gitsidian.app"

  zap trash: [
    "~/Library/Application Support/Gitsidian",
  ]
end
