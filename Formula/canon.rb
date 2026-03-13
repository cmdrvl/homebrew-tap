# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.2.2"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.2/canon-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "32ee2f36ecf874589b5aed592bbb05d93681f0a56cabfbfd699b8ec46e201ace"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.2/canon-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "725b6ed3be805cdce8af9e8bea703d572a56d1463d04857c0339a769b1d60809"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.2/canon-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d744efa77f23a425f09e6f1ac04b9ca30066287ac15df236733d5d74f695aec"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.2/canon-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46ae5484319ae2afb44c85dfd3ec9fa3a3f056c98ab1dba8037ab6b6b2e0d677"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
