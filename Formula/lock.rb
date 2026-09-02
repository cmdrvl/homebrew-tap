# typed: false
# frozen_string_literal: true

class Lock < Formula
  desc "Create self-hashed dataset lockfiles"
  homepage "https://github.com/cmdrvl/lock"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.6.0/lock-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "15f513a8e241cee4e173cdfaa1024f7b5b52f96a1a36137ae9466b8ae411691e"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.6.0/lock-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "7830a14b85526182e68b2479513a9431a0d273a158ea1d8dc18251cc7db130e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.6.0/lock-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "298486352939eb8ff86c96d0c52393ba6cb18b3f8be99d282bcd4aba5e3db8a0"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.6.0/lock-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "263d8d60f248870ab1c57c9269da852ec35cae1eed5bcf4b7a14601104a0bd84"
    end
  end

  def install
    bin.install "lock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lock --version")
  end
end
