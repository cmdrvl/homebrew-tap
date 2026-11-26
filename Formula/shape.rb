# typed: false
# frozen_string_literal: true

class Shape < Formula
  desc "Structural comparability gate for CSV datasets"
  homepage "https://github.com/cmdrvl/shape"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.10.1/shape-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "602c1f19e8bf37d4f6192ab18f0571741bfca4629a7fbfdec231c4a0657daa26"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.10.1/shape-v0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "98c80485568e5c1cb2324e44ac4a4f7ee69389bd4f12446e5014142922423cfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.10.1/shape-v0.10.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "270bab6b5d7bdf4732b6a85d190b10c41201fc69591f71b6668c613a9d0facb4"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.10.1/shape-v0.10.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1031f688d0434629c75c0296b044139eb0735ee0267b43606c5c3b87541f7685"
    end
  end

  def install
    bin.install "shape"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shape --version")
  end
end
