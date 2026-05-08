class Lock < Formula
  desc "Pin artifacts, fingerprints, and tool versions into a self-hashed dataset lockfile"
  homepage "https://github.com/cmdrvl/lock"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.0/lock-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "ba56745fbeb4999e974250cedf19ca0c317cda6416c2c3b57ac116d404487cd0"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.0/lock-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "fdebe34b21bbdea5659b414a993cae32e13e3ff1edcde4585a0f0bba8973d0c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.0/lock-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c105ad01bd0c01fada56af608f9c7cef960c33ef6ea41414b399a1a989d104d"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.4.0/lock-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b99bf49989f82ee95b2e6bbe352727229dc108da798cb3e98a54dce5db21a7e6"
    end
  end

  def install
    bin.install "lock"
  end

  test do
    assert_match "lock 0.4.0", shell_output("#{bin}/lock --version")
  end
end
