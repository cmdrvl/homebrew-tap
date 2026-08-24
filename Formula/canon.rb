# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.0/canon-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "263b9c7badfbe617112e8d678a539baf3247075f6a82818067e030db3b2c6273"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.0/canon-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "6770275aa2f20cdadc7caaba32a68fa4d4fd0137ef4b22bdaf39d7371bcbd321"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.0/canon-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "605c0320201665a07c72625e83341bcd7bb9096c600abdc918cd2165930fab2f"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.0/canon-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d18bab751d189c0ef7c8028c3b8c50ace2d93ab375ae3a33de211ee2ed47a77a"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
