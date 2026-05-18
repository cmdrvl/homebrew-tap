# typed: false
# frozen_string_literal: true

class Twinning < Formula
  desc "Protocol-faithful interface twins for fast extractor iteration"
  homepage "https://github.com/cmdrvl/twinning"
  version "0.3.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.3.0/twinning-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "ffd640f5645901cc973beaec242544b93bcf3708d80f4e2a474973bd1992e1d7"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.3.0/twinning-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "391a05b4015d99ccac490b065e43658daee8f83be01e492e1e3d0ec41451b96e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.3.0/twinning-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "040ce2a57acfcde8e40ce4dd0f731eeecac14c3428fb7eacb148b03ec42fc7d8"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.3.0/twinning-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9fc8a6b8baaee0a5c9de59a3282a1d5de8e6d91ff031daa6b95ebababc6e43a5"
    end
  end

  def install
    bin.install "twinning"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twinning --version")
  end
end
