class Omen < Formula
  desc "Encrypted, verifiable commit-reveal voting CLI"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/omen-v0.2.0/omen-macos-aarch64.tar.gz"
      sha256 "0ca277969756c0d4e627e29c1565925af99f2df5891926df0200f39a61d02f2f"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/omen-v0.2.0/omen-macos-x86_64.tar.gz"
      sha256 "065e200133cb52b0ce89e4c3de8f9d6d55b1289d51b0ce9430c3b9a2b53a2956"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/omen-v0.2.0/omen-linux-aarch64.tar.gz"
      sha256 "e97b535c829415cb5db4233af8563ea11b66e4a23551415f2200d37229c9c5c7"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/omen-v0.2.0/omen-linux-x86_64.tar.gz"
      sha256 "1c149b8cd14349c3c4519710a2b226ca687a029c886e8350dc03ca46807773e0"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    assert_match "omen", shell_output("#{bin}/omen 2>&1")
  end
end
