# typed: false
# frozen_string_literal: true

class Lock < Formula
  desc "Create self-hashed dataset lockfiles"
  homepage "https://github.com/cmdrvl/lock"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.7.0/lock-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "3d14d7327a1fd28397bb05cc7d31d8cf720cc677a8a6a0cc4ff0746aff3f7bb1"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.7.0/lock-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "44b7944ab9d6d1d0117c73d0c5d4e87992c343ecbd4b6480d6d9b176b3bc0714"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.7.0/lock-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "445a4e131ec2353a0d8209eadf083325b06d5288c18621387c3bcde0e2f97829"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.7.0/lock-0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "418cda777976c3e938d7e4ef25ba758cecbce6e9eeaf437d48049f5e9a580478"
    end
  end

  def install
    bin.install "lock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lock --version")
  end
end
