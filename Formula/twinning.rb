# typed: false
# frozen_string_literal: true

class Twinning < Formula
  desc "Protocol-faithful interface twins for fast extractor iteration"
  homepage "https://github.com/cmdrvl/twinning"
  version "0.2.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.2.1/twinning-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "c9dfa2be6aeda9b9ce1b307718483f25dae821167b3f178b3179ec12dfc78a18"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.2.1/twinning-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "252c78c5b3b73de7786a1b56c9d2c2378110c26823515833335e8c29189085ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.2.1/twinning-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ada8d3556ba8fc54891e849df2889a6b0bd41a7ce973ab2e11ca3684d3ad571b"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.2.1/twinning-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34f06e0960ca7e152a08ecee5196a672089076470014cac51764cc9266510a15"
    end
  end

  def install
    bin.install "twinning"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twinning --version")
  end
end
