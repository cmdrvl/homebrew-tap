# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "1bb84d45c76302f52e8201316a49d3de7850295ad6d38c328d34092b77fcce51"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "7d2d36ef133f5ae1bc8a264849c81bc45e11c9d08357805e58d2f346cab63a24"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1cb06371bf8512a1f43100d7d3c32675300e2957f8e598d5f4a5e9f6aced54be"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e057b80f84133fae018d3935346497c4786080d1171ab1087bfe4270128dcc76"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
