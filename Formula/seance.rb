class Seance < Formula
  desc "Ephemeral encrypted P2P chat CLI tool"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.5/seance-macos-aarch64.tar.gz"
      sha256 "8e6030181f49b23805effba0c95ca4693571510326cfeae457a4f2b27d08f1c8"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.5/seance-macos-x86_64.tar.gz"
      sha256 "7ce49a6b7b498205e41fd5c7c34465c73b6fc1ee8fa6b2cb516d3bf079cb8987"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.5/seance-linux-aarch64.tar.gz"
      sha256 "252bc7adf23d3b620962a025b53407a28d27625e6d82aae24602a84c607921b5"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.5/seance-linux-x86_64.tar.gz"
      sha256 "1ed6f09a6cab67b8231fa88dcc9eec493f64b3291c21594ef3f542cf61f304db"
    end
  end

  def install
    bin.install "seance"
  end

  test do
    assert_match "seance", shell_output("#{bin}/seance 2>&1")
  end
end
