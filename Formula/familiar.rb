class Familiar < Formula
  desc "Autonomous Claude chat bot daemon for seance rooms"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/familiar-v0.3.0/familiar-macos-aarch64.tar.gz"
      sha256 "1a19f49fa324417d30779f7eddcc95a5738d8dbad85af6482b797830b6719070"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/familiar-v0.3.0/familiar-macos-x86_64.tar.gz"
      sha256 "f6cbeb68b93e8f59071833096010f7c011f257bbd726bc07a47943933d292b00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/familiar-v0.3.0/familiar-linux-aarch64.tar.gz"
      sha256 "87e731cae94197fc6717ad737d3ea170edd689b0550f3acb076b3ef6a7c2c81b"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/familiar-v0.3.0/familiar-linux-x86_64.tar.gz"
      sha256 "139a4106dfc3c9debd925401f72f11324010c00bcf90c3a2c4df278adb02b46f"
    end
  end

  def install
    bin.install "familiar"
  end

  test do
    assert_match "familiar", shell_output("#{bin}/familiar --help 2>&1")
  end
end
