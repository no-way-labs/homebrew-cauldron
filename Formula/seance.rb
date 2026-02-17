class Seance < Formula
  desc "Ephemeral encrypted P2P chat CLI tool"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.4/seance-macos-aarch64.tar.gz"
      sha256 "30f03a94268ea1f0fa6712b60ed4117727074731368fa3d7ed9cecf4077a79bd"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.4/seance-macos-x86_64.tar.gz"
      sha256 "952a34d979efb37270b22898cc476a19fd371c5c9c68f1767efe4ed02317f03c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.4/seance-linux-aarch64.tar.gz"
      sha256 "c100756be8352b9836db6970cd05dabad690326b53581f4d90c7d30474330e28"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.4/seance-linux-x86_64.tar.gz"
      sha256 "bc34a7e8a6d7bdab43eb8ba1b7efbc3c7b1ae773ec034b9e350e14bebc986892"
    end
  end

  def install
    bin.install "seance"
  end

  test do
    assert_match "seance", shell_output("#{bin}/seance 2>&1")
  end
end
