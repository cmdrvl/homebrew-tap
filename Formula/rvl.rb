# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  version "0.6.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.6.1/rvl-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "d9433784001f773e33db21f8637d16a8747ac0b9288f7a0eb56b33be48be19b1"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.6.1/rvl-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "d59a7a06bfad0b258c1f736c959ad72b843487c20d95ad6b4ba20bd6b54dfce1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.6.1/rvl-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "540560ee5f8ca53b35f21d90a49fd306a652dd96c9482f8c057d7924a535e5da"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.6.1/rvl-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e59062c04ccaaf5c590249a35ea16a96fde5c622026e8422f94ca4f0475bff1c"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
