class Lock < Formula
  desc "Pin artifacts, fingerprints, and tool versions into a self-hashed dataset lockfile"
  homepage "https://github.com/cmdrvl/lock"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.1/lock-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "7e2c5417d446dd49c29f9a0f4fdcb31c6aeab821d376ffb00486c0fa03b8b930"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.1/lock-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "db39da48038d9f46b7e89810393e0392e218ee62205f5bf6a794cceb06b57d21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.1/lock-0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5f09b198af9eaf9942407e6eedf3752bed816bdbfe4112e4232ae05d1b5fac7"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.1/lock-0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d991621e98fd1f8d11748bd7122f900ea36aeeaa7247c96c06f08f60be15c796"
    end
  end

  def install
    bin.install "lock"
  end

  test do
    assert_match "lock 0.4.1", shell_output("#{bin}/lock --version")
  end
end
