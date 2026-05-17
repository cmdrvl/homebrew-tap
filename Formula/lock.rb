class Lock < Formula
  desc "Pin artifacts, fingerprints, and tool versions into a self-hashed dataset lockfile"
  homepage "https://github.com/cmdrvl/lock"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.1/lock-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "11a25432f0d44d79378d9afb8b55a3d3ee38d5e3b9ec16ca671c4334a3768398"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.1/lock-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "b65d6df637992ba25bf7713e57879a32aca09dd552509a8cadddcd984191be5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.1/lock-0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e89ff6775de5d0e8ab3b60b87a44ab15b49a04b0e789b4129c61c75cf660cafe"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.1/lock-0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6faf921e2bd769818ab46b8eab25fb85b55b1432f25fe20baaeff807c04f013d"
    end
  end

  def install
    bin.install "lock"
  end

  test do
    assert_match "lock 0.4.1", shell_output("#{bin}/lock --version")
  end
end
