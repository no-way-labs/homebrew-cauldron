class Seance < Formula
  desc "Ephemeral encrypted P2P chat CLI tool"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.3/seance-macos-aarch64.tar.gz"
      sha256 "8260b4b8c9287e8eed9e1baaeb3d76609622315942754dd3e34918398afbd975"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.3/seance-macos-x86_64.tar.gz"
      sha256 "a15c0c8b6a2528b64aa15a6561ac8c2c02fbc8a6625b775d4f0f52673eaf0097"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.3/seance-linux-aarch64.tar.gz"
      sha256 "7793700fe0b943368f0c02549fb855e3e42aa1ff0efee939bf503b470db09324"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.3/seance-linux-x86_64.tar.gz"
      sha256 "cf5c8797ee5d924d7393843453a64eb5456e0f1e489ebeb244f95758caafe387"
    end
  end

  def install
    bin.install "seance"
  end

  test do
    assert_match "seance", shell_output("#{bin}/seance 2>&1")
  end
end
