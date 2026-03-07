class Lock < Formula
  desc "Pin artifacts, fingerprints, and tool versions into a self-hashed dataset lockfile"
  homepage "https://github.com/cmdrvl/lock"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.1/lock-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "7644a9162ea90c5dcf7ef10e7a22b2a6a054edad2135be10ef38260ba22cc080"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.1/lock-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "9b2d1dd4c4062eb2378d608c6b5351c0e8c06967f851e0498a137aedb4fdbfcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.1/lock-0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "923771ae9025214ca5ff372ef8c7d4b17c472010140f401c711fbe13ba8d68fa"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.1/lock-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e040ea11afa6627eff33e2966baf58988052ba09feec114a1cae65dd8d2f749e"
    end
  end

  def install
    bin.install "lock"
  end

  test do
    assert_match "lock 0.3.1", shell_output("#{bin}/lock --version")
  end
end
