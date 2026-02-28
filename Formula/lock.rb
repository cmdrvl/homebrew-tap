# typed: false
# frozen_string_literal: true

class Lock < Formula
  desc "Pin artifacts, fingerprints, and tool versions into a self-hashed dataset lockfile"
  homepage "https://github.com/cmdrvl/lock"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/lock/releases/download/v0.2.0/lock-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "874038ccc7075a495da7907b75e45bd2c325eb55366fee77243dce7e4a581dbd"
    end
    on_intel do
      url "https://github.com/cmdrvl/lock/releases/download/v0.2.0/lock-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f1094853cd1a4e166f0421f8ffdcc5c10d539a5087043ede2aa6fdb78fa280b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/lock/releases/download/v0.2.0/lock-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a1862307e19a92f792e5018aea655ea623354c69548fcb470660f0cf6183dc28"
    end
    on_intel do
      url "https://github.com/cmdrvl/lock/releases/download/v0.2.0/lock-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3403d335a481abde9b9c68f2fb508909bfdbb7a19298041bae22bde3e87a65a4"
    end
  end

  def install
    bin.install "lock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lock --version")
  end
end
