class Seance < Formula
  desc "Ephemeral encrypted P2P chat CLI tool"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.8/seance-macos-aarch64.tar.gz"
      sha256 "21c4103240c506fa0ff3431bd171067f6a25b35453e1ca51e6d8faf5e709cf77"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.8/seance-macos-x86_64.tar.gz"
      sha256 "f2de61f892981cc48ddf38c41ccca4073fafd421942d39f96610d45e108f9b93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.8/seance-linux-aarch64.tar.gz"
      sha256 "21c2ce18667b93f8cc6e606126835af1cf7454f30011d466919258adcf42a93b"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.8/seance-linux-x86_64.tar.gz"
      sha256 "891a256e90b0ecc2012461e45585c5f6bf9d8b14f4a4ef53ecb34cbd77cfaf06"
    end
  end

  def install
    bin.install "seance"
  end

  test do
    assert_match "seance", shell_output("#{bin}/seance 2>&1")
  end
end
