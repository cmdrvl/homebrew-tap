# typed: false
# frozen_string_literal: true

class Lock < Formula
  desc "Create self-hashed dataset lockfiles"
  homepage "https://github.com/cmdrvl/lock"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.7.1/lock-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "29299448ba734f87374f55cba2f6fb283e0980dfd48b2c339a95fdf573d6436e"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.7.1/lock-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "673b15896f4fd14328365c9184789f1baef48d4a51078d5b2e66ae05acc1227b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.7.1/lock-0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e442e41bf6aab166291c762939872de7dc9bbe78d026234e1883cff7f343a86"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.7.1/lock-0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3598ad62919362b0e7344b05f4d00ecbb7e381efc39badb197d44fb3c4a0ae80"
    end
  end

  def install
    bin.install "lock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lock --version")
  end
end
