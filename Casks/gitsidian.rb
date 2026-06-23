cask "gitsidian" do
  arch arm: "-arm64", intel: ""

  version "0.5.0"
  on_arm do
    sha256 "d486953c7a949ef87d8437026712cbf903e2a87a573b085b9792b8d26e6561ad"
  end
  on_intel do
    sha256 "7e688f08146000472254411f023053620c1f555730b78c14a304f0f5773b404b"
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
