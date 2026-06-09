# typed: false
# frozen_string_literal: true

class Twinning < Formula
  desc "Protocol-faithful interface twins for fast extractor iteration"
  homepage "https://github.com/cmdrvl/twinning"
  version "0.5.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.5.1/twinning-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "3fba572aabbcd355cfcedc3ad972da025b318a93e32a99575739457aa12b923c"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.5.1/twinning-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "b18da1cb372a1b00ccdf536a72c1aed78aea25de30d96115f16ba718942dd7f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.5.1/twinning-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff1669023fa152402d34fa4a7a1214cccc2e9ac28c5547e635e255a8a34d55cb"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.5.1/twinning-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b12f1a491c0b4eb0103f846e115881faf00af3fa8038e4e456362014a1a02cc5"
    end
  end

  def install
    bin.install "twinning"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twinning --version")
  end
end
