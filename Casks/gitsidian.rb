cask "gitsidian" do
  arch arm: "-arm64", intel: ""

  version "0.4.8"
  on_arm do
    sha256 "06b0757c6a59b7f5f1a6450f48eb4092d149a43bac616fa4c317cba5c1990849"
  end
  on_intel do
    sha256 "3b78b1c490a2db019f45b9020bd85b06c3c7cc6964c4932a7cf01dbe51a416d9"
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
