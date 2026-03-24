# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.3.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.3.0/canon-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "389c9e6f868ab4345248292cd1cf62bbf03927fe7cb060d6c85223bd44b7ac3e"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.3.0/canon-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "9ca5b6f4f486694ed16a891a56f862cbaee3f860c983f79b93cf51b1086cea90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.3.0/canon-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c72ae0f68abb1cfec7ed5e08ce65e30abe60df9ac1ee518999dfaa557fd992e4"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.3.0/canon-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "558bc3ba448ce8d4804813dfcc69231636e10bfb6ddd034aa22e512693ed9907"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
