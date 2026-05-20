# typed: false
# frozen_string_literal: true

class Twinning < Formula
  desc "Protocol-faithful interface twins for fast extractor iteration"
  homepage "https://github.com/cmdrvl/twinning"
  version "0.4.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.4.0/twinning-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "9ed4012b4631912078e4e7fd7718295a5ed3111dafe2929639c996492613239c"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.4.0/twinning-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "5dad077c7915a3b8c0f7dffef5f88addfe065b75cbe63fabbe00803d0d266a9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.4.0/twinning-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "465a9cf3335ce90283903124da01cb2a0a6e70b2ddb70b76814413ca20d8b0bb"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.4.0/twinning-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e71aa9dc21e6dbed0f910d6c6c649bf76c462833314a212ef09488cf70823514"
    end
  end

  def install
    bin.install "twinning"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twinning --version")
  end
end
