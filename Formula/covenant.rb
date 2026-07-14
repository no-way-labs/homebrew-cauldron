class Covenant < Formula
  desc "Membership signing ceremony CLI"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/covenant-v0.2.0/covenant-macos-aarch64.tar.gz"
      sha256 "843223bb703f1053e3e1a155c9258cd2869348547a55038eb521f2c1e0545cf3"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/covenant-v0.2.0/covenant-macos-x86_64.tar.gz"
      sha256 "6ae1a2a86fefdc94e1fd6428d0f9966e704b98a243a9163de85dd3f8661e96c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/covenant-v0.2.0/covenant-linux-aarch64.tar.gz"
      sha256 "f0f575cb869030a6b4da5c90add930b643d1be380339a7b1e41ad64fa069ce65"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/covenant-v0.2.0/covenant-linux-x86_64.tar.gz"
      sha256 "faa7d4cbb35ee080ebe0516ced673c7b1916410b070bdfbb223165e6c0a271c1"
    end
  end

  def install
    bin.install "covenant"
  end

  test do
    assert_match "covenant", shell_output("#{bin}/covenant 2>&1")
  end
end
