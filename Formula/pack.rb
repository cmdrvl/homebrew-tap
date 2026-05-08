# typed: false
# frozen_string_literal: true

class Pack < Formula
  desc "Seal artifacts into immutable, self-verifiable evidence packs"
  homepage "https://github.com/cmdrvl/pack"
  version "0.4.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.4.0/pack-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "42ef8e65ca7e6a80d7baaf6011844866e4a2b0e7d2484d13d4274b6f28eeca76"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.4.0/pack-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "4d70b1b4cde1ae63efd1d1690c9587c3873059af44e861176f8afb7e61dea7ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.4.0/pack-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ebf80433c47ff540d9a244d8ca9872a600fa05c0dc91a910d8163c563777ebbf"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.4.0/pack-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "268b8dc63b504567abf1a6a4e7da8303079cd639a53128f728d05fd5f2406b82"
    end
  end

  def install
    bin.install "pack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pack --version")
  end
end
