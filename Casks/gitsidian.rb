cask "gitsidian" do
  arch arm: "-arm64", intel: ""

  version "0.7.2"
  on_arm do
    sha256 "e8d87e3bcc30c96e144cfa7dd420533ada9f2965001a351352ab50032697226a"
  end
  on_intel do
    sha256 "b490b88433ad3010a1a42c02695880f06026e7089825215493d3cc2559bf94a0"
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
