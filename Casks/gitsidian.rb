cask "gitsidian" do
  arch arm: "-arm64", intel: ""

  version "0.6.2"
  on_arm do
    sha256 "ce5e1e5bc4810d8c0cff7ecb36a45b28bbd350a50b6708ef2bab368fad2d7287"
  end
  on_intel do
    sha256 "ccc49e4a41d117a4248b4b1003fae8ac3eca94e2288f5d0de3e3b6fb704a5965"
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
