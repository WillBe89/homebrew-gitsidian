cask "gitsidian" do
  arch arm: "-arm64", intel: ""

  version "0.7.4"
  on_arm do
    sha256 "da8b3ac2355721fbdeb80ac6ea83415705cd537aa4406460142bd3b6c3ff8e0f"
  end
  on_intel do
    sha256 "e72cea60a92b7909fd71059bce71a7b9ca43cfa3c357592141ef0bc4889a3ed7"
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
