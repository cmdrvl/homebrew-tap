# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.8.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.8.0/canon-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "50f682bd65cf1b046e60d2aa91a7c485324c24c803d5614bf913f29b7d4beae6"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.8.0/canon-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "cf1fcd7ca8a47d2eacda382aed08bcb510575728cc987d0d70df05964a3e2b9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.8.0/canon-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29d66b47a67bf9ca200a4109f6c69b6bd1dbf71551adc32060d8048aae334a15"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.8.0/canon-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47cb5227bff624ef1decb41a89c9e30bbe24470c9ef9f318167968e960db8074"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
