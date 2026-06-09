# typed: false
# frozen_string_literal: true

class Twinning < Formula
  desc "Protocol-faithful interface twins for fast extractor iteration"
  homepage "https://github.com/cmdrvl/twinning"
  version "0.5.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.5.0/twinning-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "27f7cb6a0949b3d265e2b0dfc05bd8676f4d0209acb9d72b30018da0eafbf609"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.5.0/twinning-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "fd83865d3499ef771552fe8d759f2dc98089bdfcff16e7236f3fa81a5676754f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.5.0/twinning-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45f1595b4d71c01f03c7c42dc027333bfee2934db5d57b16509ae2ad15459c44"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.5.0/twinning-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "058c3ff63ae2eecc234ee2278d11529656787cedd25d34bbb6f7ec414ed5f7d5"
    end
  end

  def install
    bin.install "twinning"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twinning --version")
  end
end
