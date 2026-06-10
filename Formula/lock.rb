# typed: false
# frozen_string_literal: true

class Lock < Formula
  desc "Create self-hashed dataset lockfiles"
  homepage "https://github.com/cmdrvl/lock"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.5.0/lock-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "4e15da103103ddd30e0708c0cb74b24fd7512bdf04b50f1845929e59b76f456d"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.5.0/lock-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "f07cfddaf3bbb9396c2e3ef3fff5f87c125b4d737dc4f5f57d98e2d1b5dfd7fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.5.0/lock-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d8245d77fc434287907553e46106bf2977d67f9cc8c2ba7fa3e4462524502cc"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.5.0/lock-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ae907692c67b2b7e3cab39750d4385db288060ff447ba017067d221f6a756d9"
    end
  end

  def install
    bin.install "lock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lock --version")
  end
end
