cask "gitsidian" do
  arch arm: "-arm64", intel: ""

  version "0.7.0"
  on_arm do
    sha256 "7c76cbe55bd4bdbf02ebe0d809a8aa2d9d3e611c2aafde23c3e47f818df3c527"
  end
  on_intel do
    sha256 "27ca73b19c100ad6d6ebfa897a4bc8d218be9f770e859a6914e1d8b9bbb20cff"
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
