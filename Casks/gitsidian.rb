cask "gitsidian" do
  arch arm: "-arm64", intel: ""

  version "0.6.1"
  on_arm do
    sha256 "5791f7883247d7f67cef602428b56fb035e7a5b856c854bb225df01136767a89"
  end
  on_intel do
    sha256 "ad8d4aa4c6e7bacc0f8561da539a186f97f975b72e932cf0a33e0131e2b4f903"
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
