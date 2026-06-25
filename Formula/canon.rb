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
      sha256 "00e363f4dcaa199b9a255bc338fe8b2521c5e941aa79685b9c66f882d7b92b79"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.8.0/canon-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "bca1e603aca780f242d1c5cd4e89f9bed4a7a40cf504924c03bf25449b5cfc79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.8.0/canon-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "beafda4d8b6c013b82fb85a69d4a4ef9fd321d243ead99288368972101cc79e4"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.8.0/canon-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e5e9c8e9f8ab65643881ef3ed366b0fc500b026281f4d887c495bcd9c1604d8d"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
