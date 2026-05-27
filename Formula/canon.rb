# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.5.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.5.0/canon-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "ccf25a93ed52c14d1f6a59705c4af6bc014fbcc13582b695b05d6b967b17db7a"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.5.0/canon-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "6377b10fe94812930b21851826e64dafce3edc53c61b0b9600751fc90d2e7b9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.5.0/canon-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b6d401e61ef91d6a5a3c7d878d69fcf6886fd8ea7deff368baea1bd8f60b2b4"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.5.0/canon-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf9295292cde65396d4bff3c79acda46909a4eb804105b102887ae3c1f0ebb45"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
