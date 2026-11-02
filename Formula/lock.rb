# typed: false
# frozen_string_literal: true

class Lock < Formula
  desc "Create self-hashed dataset lockfiles"
  homepage "https://github.com/cmdrvl/lock"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.6.0/lock-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "a31a0a404d642ceabd4cd6a2583790790aba22078c6837138bf5043f3cc85d23"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.6.0/lock-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "670e0b5c177b06d1651de96318cfffd45e726fe190cf65c014aaf36ff84d115b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.6.0/lock-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9386e0f8b9667e664c14089e1826edb0ef63b2bd6d80011c80fc3b47391a0247"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.6.0/lock-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4a05bdfb61a5fbe666deab2fd22a9edb904f68f436acba98964530cdb38d597"
    end
  end

  def install
    bin.install "lock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lock --version")
  end
end
