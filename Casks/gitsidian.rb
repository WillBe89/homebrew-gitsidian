cask "gitsidian" do
  arch arm: "-arm64", intel: ""

  version "0.7.3"
  on_arm do
    sha256 "02350fa86cc1e171379fe2dd751c7beee2a988c6e23a77be7be75fd4c1735287"
  end
  on_intel do
    sha256 "801650e67b5bbc18ecfd0ad06d49c9482999bb06b04c0d42a163c357428fbeb4"
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
