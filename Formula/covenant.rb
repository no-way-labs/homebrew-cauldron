class Covenant < Formula
  desc "Membership signing ceremony CLI"
  homepage "https://github.com/no-way-labs/cauldron"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/covenant-v0.1.0/covenant-macos-aarch64.tar.gz"
      sha256 "6ef3f9f3f26135b0b34a66a0400a5a7b3fb394f09cb268b2b6c568d6e966f551"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/covenant-v0.1.0/covenant-macos-x86_64.tar.gz"
      sha256 "cfa4f67020b4a94f62892520c6eb29a85096e0423cd22927b1c5642de266f02c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/no-way-labs/cauldron/releases/download/covenant-v0.1.0/covenant-linux-aarch64.tar.gz"
      sha256 "96ce8e221eb7f7838f8594f5cacce24042b02c18cf67d176ee619c5ebe5f5feb"
    else
      url "https://github.com/no-way-labs/cauldron/releases/download/covenant-v0.1.0/covenant-linux-x86_64.tar.gz"
      sha256 "43edd169b8d7f70aec26b4b6bbe2f42a3a5deea5dc98623d6395ac06dcfeffc5"
    end
  end

  def install
    bin.install "covenant"
  end

  test do
    assert_match "covenant", shell_output("#{bin}/covenant 2>&1")
  end
end
