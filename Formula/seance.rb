class Seance < Formula
  desc "Ephemeral encrypted P2P chat CLI tool"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.3/seance-macos-aarch64.tar.gz"
      sha256 "b4f6879e7bb78f2cf02e4e5333a2ddb397358441838513b14a6d96e69abdade3"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.3/seance-macos-x86_64.tar.gz"
      sha256 "49a9df98af23b5542c209677a01e06a49288d9b0df833da7c7117c255dbad481"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.3/seance-linux-aarch64.tar.gz"
      sha256 "19b557d30f9021c21c247edcc56cb3a84be3a60a56ba57f3a552b2b150e4e623"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.3/seance-linux-x86_64.tar.gz"
      sha256 "c2caa27a46c62cb3772fed1434aa3b0e293c482d2fbf6aa7a6ca9f86052e4f98"
    end
  end

  def install
    bin.install "seance"
  end

  test do
    assert_match "seance", shell_output("#{bin}/seance 2>&1")
  end
end
