# typed: false
# frozen_string_literal: true

class Twinning < Formula
  desc "Protocol-faithful interface twins for fast extractor iteration"
  homepage "https://github.com/cmdrvl/twinning"
  version "0.3.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.3.1/twinning-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "1241207fcadf113be45adae14b24989f53e421ea02314be736d06e4df9485d0c"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.3.1/twinning-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "e3c4cf0c9b07266091b6ac36cf6224a7758a4a6c4e18435f0cbd75e56f270a70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.3.1/twinning-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3a320a51a20be1dee9c6e1f59e4985015164decc80d8d7f69848b73a69d465ad"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.3.1/twinning-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b2576b71c0016123162e79719ec6dd911fa16d75b60c6cfea4b0b2770867af9"
    end
  end

  def install
    bin.install "twinning"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twinning --version")
  end
end
