# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.14.0/canon-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "06cf98a91683de12e02865451b52b0f9afd38641eb3af4841f58c7d8e38c44ab"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.14.0/canon-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "dffc211b92bf6bba034efa2148782af06ef4d356c22d15106d6892b533439348"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.14.0/canon-v0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38fd0de63e2510bb95917c54f812400ae9e1243541f24dd2b20476388eac5b5d"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.14.0/canon-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88e63ebbb74468be4bf748a8d5d91f6917a948a9ea6180384f686999fcb2b7ca"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
