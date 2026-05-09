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
      sha256 "d5fb31ec0fa14515a31276e7cc469c268015877281298f9ef5d047a037a18261"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.5.0/canon-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "51b94413cc4529d7133b9743799ca18f5db90d4da6e335d8cac53847f6ed340b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.5.0/canon-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ed4f387a8475d04746318746af5c2c33efaf77e51844bef7d9f51b8b7e78b5b"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.5.0/canon-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3311b51767c046db5e0190f5208aba336a7ebdd82f5f1083b85cf4874d4613ce"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
