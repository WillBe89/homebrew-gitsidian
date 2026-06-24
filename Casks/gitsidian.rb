cask "gitsidian" do
  arch arm: "-arm64", intel: ""

  version "0.7.1"
  on_arm do
    sha256 "750f3bf61a4a4b9d474b14f73097f878c44307254faec268967363c4f5c94e81"
  end
  on_intel do
    sha256 "e2c4af010dcc67a68348070c7bc608387689b2f76ba7ea91bb79a3904ab87932"
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
