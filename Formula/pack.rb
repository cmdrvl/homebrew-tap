# typed: false
# frozen_string_literal: true

class Pack < Formula
  desc "Seal artifacts into immutable, self-verifiable evidence packs"
  homepage "https://github.com/cmdrvl/pack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.5.0/pack-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "4e6118ef5c91cb49ef5e6663ddfc0021ef0db99046eee7200c316cfcf4006057"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.5.0/pack-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "28b5c819d22f75a7fdaff7e46532624471094f257c65eac47ae99ebf3e98660b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.5.0/pack-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f950fb43657fb1a10ea0161dd4b5c6f192407a6c94592edde1a34941d7ce7f0"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.5.0/pack-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21d9d2c8ed0a27b6d7a8349b57f7a16ccb5d59d5f9ef240a93c3761e34bcf0c2"
    end
  end

  def install
    bin.install "pack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pack --version")
  end
end
