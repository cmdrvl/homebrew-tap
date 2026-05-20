# typed: false
# frozen_string_literal: true

class Twinning < Formula
  desc "Protocol-faithful interface twins for fast extractor iteration"
  homepage "https://github.com/cmdrvl/twinning"
  version "0.4.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.4.1/twinning-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "6de41958325b73f1bd4d79d209d43b7f93424eeaf570afcac5482fff5e4b4799"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.4.1/twinning-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "7e5b6084210869323cad2678f08c2f4a5768d4856555fa5d712b482bbdd16aca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.4.1/twinning-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "40f958facfc2cacb53a9762072bf76149a951388be1831f8fa22c728adb1062d"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.4.1/twinning-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95fe534d7011687084a9e0953ea997e21ebed7026b68fc7b8a22f39eb9a0ce03"
    end
  end

  def install
    bin.install "twinning"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twinning --version")
  end
end
