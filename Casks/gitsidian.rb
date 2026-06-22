cask "gitsidian" do
  arch arm: "-arm64", intel: ""

  version "0.4.7"
  on_arm do
    sha256 "8c83eb6469a044318f1898ffbec644d21d4ecef4be0f837e025930ff1885b651"
  end
  on_intel do
    sha256 "6b3b84ab92440cc5f6813b9fb38a157fe8b2e7e470873754f557419955d57a97"
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
