# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.9.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.9.0/canon-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "4d68a44d17d914a719b925a9a07e73052eb9d5c630902cf8f3cc458c81966c99"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.9.0/canon-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "b4a9920ae02b00bb3037ff2860c9a5b6e5e687756edb2e5876e82d987b4bd1a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.9.0/canon-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "06f51a7d5f876c947a7db871b3fc487eb9863adfa4e6c5aa83c7b06f859b9efb"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.9.0/canon-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "524a33b31ac9ced7f9ad24366705ce8d1d96afc47278c10a1723937820ac55c2"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
