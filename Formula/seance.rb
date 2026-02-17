class Seance < Formula
  desc "Ephemeral encrypted P2P chat CLI tool"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.6/seance-macos-aarch64.tar.gz"
      sha256 "098a66217dfe6f29f4a29953793b2a8ea52eff90e3744d5aa6745d9c39fa9568"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.6/seance-macos-x86_64.tar.gz"
      sha256 "158f9cdf40648b4994a5d44883931e81a408813cea7c22a3f101bc062eb2db8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.6/seance-linux-aarch64.tar.gz"
      sha256 "e24f138f944c028aede44305d3cd5419ac53535ec719b40b7d979328bbc9d554"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.6/seance-linux-x86_64.tar.gz"
      sha256 "cf436fdaa40c16d7f40292101051987e00ec5820652752364523f53e68f925ff"
    end
  end

  def install
    bin.install "seance"
  end

  test do
    assert_match "seance", shell_output("#{bin}/seance 2>&1")
  end
end
