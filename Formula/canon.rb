# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.2.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.0/canon-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "4982deb3eb2bac7b312767ef9036e8a673690f3a4c9803ab31658da58b41f7c1"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.0/canon-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "9629dff622a1eb4f79f4b7dfe3ca04012926afaa41b9948cb3d18cdc81b5b25e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.0/canon-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e61d3fb3f233bce781457cdc81f0d02fb5b968be1b2ef300b835a74b39607938"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.0/canon-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff2cb56b17b7789a0af9be327ee572f71df8797da82c65307105d9e2ab2c06d3"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
