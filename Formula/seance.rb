class Seance < Formula
  desc "Ephemeral encrypted P2P chat CLI tool"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.7/seance-macos-aarch64.tar.gz"
      sha256 "2a5562a68d33846d7dd97114ef6e158817bb7accaa0dbb98b0d862f43e0693ec"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.7/seance-macos-x86_64.tar.gz"
      sha256 "17299ecd521676e0c6398591b2fb55a4718606d137b2bc3aeb25f0d26f13c260"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.7/seance-linux-aarch64.tar.gz"
      sha256 "d70b825ac3597468d38300a5ad7063815427ed9ae72726fce28a18d3fa32e782"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.7/seance-linux-x86_64.tar.gz"
      sha256 "587835f7994b1dc5872a4fac995e00f8f7471051eb400f65ed0aee12de57f39e"
    end
  end

  def install
    bin.install "seance"
  end

  test do
    assert_match "seance", shell_output("#{bin}/seance 2>&1")
  end
end
