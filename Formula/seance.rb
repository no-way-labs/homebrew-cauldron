class Seance < Formula
  desc "Ephemeral encrypted P2P chat CLI tool"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.0/seance-macos-aarch64.tar.gz"
      sha256 "90c54443b4f2ba775191fe1a1de216cf8a8c12fccef081df341ec9eeb4b15dcb"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.0/seance-macos-x86_64.tar.gz"
      sha256 "a35f404d980c8d8d51d0131f8989b145a7bfd4eb1f3b145b86c33b92347e2e33"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.0/seance-linux-aarch64.tar.gz"
      sha256 "c5e10741c20f300c380a0a753dffc762fd54232b1f98484f26ec5a151d6ca1a5"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.0/seance-linux-x86_64.tar.gz"
      sha256 "6dac5ece6cd4ca55142c2990d47772536e68aa4ecf8359ece74f472d2caa49e9"
    end
  end

  def install
    bin.install "seance"
  end

  test do
    assert_match "seance", shell_output("#{bin}/seance 2>&1")
  end
end
