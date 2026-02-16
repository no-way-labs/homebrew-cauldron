class Mitt < Formula
  desc "Encrypted file transfer CLI tool"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/v0.4.2/mitt-macos-aarch64.tar.gz"
      sha256 "b4e84b8eb19aeb192039d975a6d0ed1fdd5d2f182c39ae5e3bc7f29299dc073e"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/v0.4.2/mitt-macos-x86_64.tar.gz"
      sha256 "b2e719833e2f1d7b457af5728dc2ce72a37eff82f1fcecc1d237f8db0586812d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/v0.4.2/mitt-linux-aarch64.tar.gz"
      sha256 "8333853c70bcbfff00ffdacf7852540fde2b88993c9e28c1c2a1c4ba58352d1e"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/v0.4.2/mitt-linux-x86_64.tar.gz"
      sha256 "1e3abfee07409d6f19db82d66e9f9cc86b2abc754a1f0402d82fc21f68158037"
    end
  end

  def install
    bin.install "mitt"
  end

  test do
    assert_match "mitt", shell_output("#{bin}/mitt --help 2>&1", 1)
  end
end
