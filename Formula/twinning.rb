# typed: false
# frozen_string_literal: true

class Twinning < Formula
  desc "Protocol-faithful interface twins for fast extractor iteration"
  homepage "https://github.com/cmdrvl/twinning"
  version "0.5.2"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.5.2/twinning-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "26268a43e0fa62564747717d2d0e9e86d8673c39c660232a7b0af709d94dcff6"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.5.2/twinning-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "566e51d3a418e2163bbf93b470216c6eb4c4c7ddfd01671a87b9d0b9568c218a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.5.2/twinning-v0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d941f6f4f21dabd3e021eb9c1d3e91715d6863979af164ab0b8eb1fd2b0deb5a"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.5.2/twinning-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2cd2406347cd66c8d68f9a27506db35c40ad83063cdd42aa00048e5ee1756f88"
    end
  end

  def install
    bin.install "twinning"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twinning --version")
  end
end
