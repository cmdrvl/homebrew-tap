# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.13.0/canon-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "56e0ecc833b8ec2f8e45bc6dd8049b23cfc78d3479400ff68da6037f0cfa7f63"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.13.0/canon-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "43a4ae8c170f2ed824f208cbc4b64bb55d959e02b4a0d3347e201ebd635dbcf2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.13.0/canon-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d41f8aca471130b16f56b1c351618199eddb00e4a727b28d7ccd8f2c75ef5e95"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.13.0/canon-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "68ddb5e9d8cf5d49d338aa87d9a30497a3e21665aa182c8f8d5f28adeb5009c3"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
