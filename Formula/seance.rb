class Seance < Formula
  desc "Ephemeral encrypted P2P chat CLI tool"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.1/seance-macos-aarch64.tar.gz"
      sha256 "9f76eb828bd16eae3df134f0e2001c5ff834d6a572a964e3f66ddbc14f029e11"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.1/seance-macos-x86_64.tar.gz"
      sha256 "cc451d468c141413d00b53cb8cdd4654362b0844313a4896574c4f6883d4b40e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.1/seance-linux-aarch64.tar.gz"
      sha256 "533432441bfd1d0a3dcedc9e9a08bc0cdf90c647f8a83950260ddd196ae7fac4"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/seance-v0.2.1/seance-linux-x86_64.tar.gz"
      sha256 "cb91731c23484ba44eb58707cc52800c7080986a6ba0fa9b33665c3bd41c2b90"
    end
  end

  def install
    bin.install "seance"
  end

  test do
    assert_match "seance", shell_output("#{bin}/seance 2>&1")
  end
end
