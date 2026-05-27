# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.6.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.6.0/canon-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "b6d7eb88d17bb3a983a69bd382e5def97b53cf918c3040b39bd2d586a68f95e7"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.6.0/canon-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "5609afa314bad11bea18443a96fa4b0edd2cf592e5ebb937b57d9e97ab8443ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.6.0/canon-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c23fd52931f3c54cc2989a2bae42391c9b834df377c1810fb134532862ea582"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.6.0/canon-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93b5318ca52d76be38ae8be2102c0102429fb358c7a9d2f9073f818fc8d549ff"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
