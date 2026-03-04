# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.2.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.0/canon-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "86a7bb46f92bf3727a4cc559147e1a374391bdff5055c897c12e57a85b3a54fd"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.0/canon-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "624a5b5f4bbc15497e66593b30ab0df810aa09fe2ddf7db500ceadca52699234"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.0/canon-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48bd6e966d35243fa74c0d17880f24ea269b946a89ce1f06497d2fbbf4222a59"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.0/canon-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a596867c989b6f6a041a0fa92d082dc06b6708ff99195dc1db0a6fb1f6b0392"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
