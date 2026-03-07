class Lock < Formula
  desc "Pin artifacts, fingerprints, and tool versions into a self-hashed dataset lockfile"
  homepage "https://github.com/cmdrvl/lock"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.1/lock-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "3355916c1d9f97b38f00e49c89e20142ccb3f99d4b330b02e33fe2f2b434ae48"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.1/lock-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "2db42b2ca8a928aac25ba06251d1fde5758002ad71406254bd8add3b6a047e6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.1/lock-0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a09c3b3ec9d39a633a134f18c9bc17f6625dfd85867095a4696af4fcc91c74b4"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.1/lock-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6711f175c70bcaa7abf5cd4462c37714e750412efd179f70c5058c7c4c02d86"
    end
  end

  def install
    bin.install "lock"
  end

  test do
    assert_match "lock 0.3.1", shell_output("#{bin}/lock --version")
  end
end
