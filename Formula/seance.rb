class Seance < Formula
  desc "Ephemeral encrypted P2P chat CLI tool"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.2/seance-macos-aarch64.tar.gz"
      sha256 "8703fa8ee4d4c942206080a4fb8f0000e040e887844cf602be67d55bf0660227"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.2/seance-macos-x86_64.tar.gz"
      sha256 "1b436ebdb8d0b70c758fbc1bec3d55949a8223d4cee326c7e1f502a0756ccfa8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.2/seance-linux-aarch64.tar.gz"
      sha256 "fae2235136d5efd4f2a59dfbc98ca5cc438722a9e8edf3f840e5ca531f47df35"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.2/seance-linux-x86_64.tar.gz"
      sha256 "3d356973925af4167e82944b16352dc586811a4205e26ed92f4747c958357dea"
    end
  end

  def install
    bin.install "seance"
  end

  test do
    assert_match "seance", shell_output("#{bin}/seance 2>&1")
  end
end
