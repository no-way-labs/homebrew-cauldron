class Mitt < Formula
  desc "Encrypted file transfer CLI tool"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/v0.5.0/mitt-macos-aarch64.tar.gz"
      sha256 "f98d5333a3d8acb6e4b7bc82b4b99792d17e471f6f26831975d9bc2f91d2db01"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/v0.5.0/mitt-macos-x86_64.tar.gz"
      sha256 "093074978f66df0b9e4c71818aab6b70413f723b19a5fef60e2288a64ae07c84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/v0.5.0/mitt-linux-aarch64.tar.gz"
      sha256 "9c0b313efd1a8dead69917b35b77669fa1556254428ac4644c85c3cffa07f378"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/v0.5.0/mitt-linux-x86_64.tar.gz"
      sha256 "d7fcdb2272fa0130187da6064839313e56e318d85a9d493345df7f8d1a545b2b"
    end
  end

  def install
    bin.install "mitt"
  end

  test do
    assert_match "mitt", shell_output("#{bin}/mitt --help 2>&1", 1)
  end
end
