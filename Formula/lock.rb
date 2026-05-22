class Lock < Formula
  desc "Pin artifacts, fingerprints, and tool versions into a self-hashed dataset lockfile"
  homepage "https://github.com/cmdrvl/lock"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.1/lock-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "566d9f363fe58368b9d50e680f7e84d1a6ad89355e6d5885f4659eff28e09fb3"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.1/lock-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "83065d439eebbbe1478cd0ba2d8e075c278b6ede68a46291d2fa00c71d88e112"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.1/lock-0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af4fd70d1616067a22be0aa12d3858d7823a7c3f0cec8b6463cd560e5f21fda5"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.1/lock-0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a08f5561092df0b7cf039036333970dadad02cba415c2fa37d0d8b916f5244d"
    end
  end

  def install
    bin.install "lock"
  end

  test do
    assert_match "lock 0.4.1", shell_output("#{bin}/lock --version")
  end
end
