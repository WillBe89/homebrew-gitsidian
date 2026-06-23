cask "gitsidian" do
  arch arm: "-arm64", intel: ""

  version "0.6.0"
  on_arm do
    sha256 "361eb7148d7d8b60467ea067bd755dc46ee4962bbe61f50ac6e3a11e89c9cfed"
  end
  on_intel do
    sha256 "9e043ff9eb918895d0d8ae3c8f2b53987e12e1b1920dcf6d019c3745fab72048"
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
