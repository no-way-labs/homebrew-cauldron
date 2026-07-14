class Mitt < Formula
  desc "Encrypted file transfer CLI tool"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/v0.5.0/mitt-macos-aarch64.tar.gz"
      sha256 "a50809c854d8fc64202bf5f91b0e3fe4d20c7f9d7360d776fa9d026e837d7550"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/v0.5.0/mitt-macos-x86_64.tar.gz"
      sha256 "a0692952f7d124a408d9bf290b8ad123a7af3dd88def93e30759db9f3f33831f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/v0.5.0/mitt-linux-aarch64.tar.gz"
      sha256 "808a4ef192d77122e94ac54375804e6c3a250830ffb38aaac28af1cfce1dd940"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/v0.5.0/mitt-linux-x86_64.tar.gz"
      sha256 "726d10ff0017474f8a3fceca43fedaa0c211ddfc9a06a72a9b0efd88629f1326"
    end
  end

  def install
    bin.install "mitt"
  end

  test do
    assert_match "mitt", shell_output("#{bin}/mitt --help 2>&1", 1)
  end
end
