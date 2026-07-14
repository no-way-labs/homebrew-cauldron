class Seance < Formula
  desc "Ephemeral encrypted P2P chat CLI tool"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.3.0/seance-macos-aarch64.tar.gz"
      sha256 "23ec08ae55476705145c3abab5feb8cd1255ebe7cd9d417af4c9c503f7dc21c6"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.3.0/seance-macos-x86_64.tar.gz"
      sha256 "f3536dd26daadffdb6d2defee00df8c202081b02ea15c8dd15d6cf693874234f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.3.0/seance-linux-aarch64.tar.gz"
      sha256 "672f28f862cb1062bc079f5caab35951e0854f83cb673831a14782963805b7fe"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.3.0/seance-linux-x86_64.tar.gz"
      sha256 "9e0c264ae320fa2c8a371e4dbc6fd2beba2be82d40076183e6608e01b3f73b93"
    end
  end

  def install
    bin.install "seance"
  end

  test do
    assert_match "seance", shell_output("#{bin}/seance 2>&1")
  end
end
