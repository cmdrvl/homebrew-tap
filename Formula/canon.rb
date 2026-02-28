# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.1.0/canon-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "a7d9de0e2e1442ea70931c7170bf927503fcafe534f3c9d65da13f74bdffecd4"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.1.0/canon-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e11d3eaf607aefebf8e375ac84a6ce674edea9ce485e5e2edef984575a7be2fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.1.0/canon-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47e3f2dd6b443f8efb20b55f7814c5f47e24b538117a083cdac411a7a54baec1"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.1.0/canon-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59974237d8705aee69d8d77c34340b279f03163f0ce0067c9f395e738487845b"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
