class Omen < Formula
  desc "Anonymous encrypted voting CLI"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/omen-v0.1.0/omen-macos-aarch64.tar.gz"
      sha256 "42d310f8893983980c40b7be0348d550c3afe0445d99c69d34cae625de709b93"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/omen-v0.1.0/omen-macos-x86_64.tar.gz"
      sha256 "85464cfcd85fff1f13dc3e004e6f14d31a36032a3eb602c6d3e625727237dc0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/omen-v0.1.0/omen-linux-aarch64.tar.gz"
      sha256 "e24dfb380ea5d5d1aabebed4d1169f987a6242f0e291d80319be3b014ee5d3e6"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/omen-v0.1.0/omen-linux-x86_64.tar.gz"
      sha256 "79d42fa7b6550b7b803b8a9b8fe14eaf0f28535c926faa6625669ec745f56e6b"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    assert_match "omen", shell_output("#{bin}/omen 2>&1")
  end
end
