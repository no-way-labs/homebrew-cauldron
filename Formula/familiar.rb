class Familiar < Formula
  desc "Autonomous Claude chat bot daemon for seance rooms"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/familiar-v0.1.3/familiar-macos-aarch64.tar.gz"
      sha256 "a6e672a583a9431d52b0473541f93910f5e2748436cb65d405b473efd8836411"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/familiar-v0.1.3/familiar-macos-x86_64.tar.gz"
      sha256 "037698b9d35d4ea386e0b52d8b62af5ff50dc286214ea53502808843f91c351b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/familiar-v0.1.3/familiar-linux-aarch64.tar.gz"
      sha256 "1e55ba02254e684ece2bc90758bf8339cd29f0154f54531c758bf1a50ead31f5"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/familiar-v0.1.3/familiar-linux-x86_64.tar.gz"
      sha256 "4b9842d557d6f9cfdceef19f6c1d3d8d1e9fd07b84437e7fa81748a8ad49b1a5"
    end
  end

  def install
    bin.install "familiar"
  end

  test do
    assert_match "familiar", shell_output("#{bin}/familiar --help 2>&1")
  end
end
