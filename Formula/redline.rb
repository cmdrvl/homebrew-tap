# typed: false
# frozen_string_literal: true

class Redline < Formula
  desc "Diff two document versions and report every change as exact byte spans"
  homepage "https://github.com/cmdrvl/redline"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/redline/releases/download/v0.1.0/redline-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "592ba9c703bebb690144cc26e58b0b0b4fc4bef2cef8d8cbe81d898e33213684"
    end
    on_intel do
      url "https://github.com/cmdrvl/redline/releases/download/v0.1.0/redline-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "5b54128cac5caa68415e6f042a5535201787941418708b7501b878b6da8fda8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/redline/releases/download/v0.1.0/redline-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c2d850a768a1b5b5a0dd4bd99956416299552741bc3d70591e4f06c75b7b2fb"
    end
    on_intel do
      url "https://github.com/cmdrvl/redline/releases/download/v0.1.0/redline-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d95ded3869c32edabf57500f8ce46b088d5865806deaf6c08b0340bfd85312a"
    end
  end

  def install
    bin.install "redline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redline --version")
  end
end
