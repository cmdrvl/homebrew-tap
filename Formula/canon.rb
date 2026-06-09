# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.6.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.6.1/canon-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "01b6b3c28b192f8fb0518ca2a38748c29d23e2d2e6b0e7f329a41804104019d4"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.6.1/canon-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "46f2bf5a8113903dca87af34cfd8ea4a60d63282ae56fd878ae8d91e579cf2fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.6.1/canon-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc258973de24d755fc4d00c43e97afcfa6a15e4644c9556ac502f0941ae218f2"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.6.1/canon-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1786f21a2ea57e91aba3ecd33ebb178b2c877cf2cfa47301e88c4df17a4d6905"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
