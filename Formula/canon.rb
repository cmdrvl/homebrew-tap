# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.9.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.9.1/canon-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "7c06012da40c3ef72f84b1ef5f3c2f2ecfc7992a1aacc8d5ceab9f5d1a43df4b"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.9.1/canon-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "890d1b73be1034e143568bc1bd67b012fc90a19c9abb9961cd18e4a62a9d0c3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.9.1/canon-v0.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3015e78931d8de85baa376e09a9f39df7b2bd030b90640bb5b7e2f3fe755ffa6"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.9.1/canon-v0.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7268b8eb33402d88b5ee8de8712083f284e106a1ccf6fefe39a75b2fa8a8e19f"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
