# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.11.0/canon-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "b1c0c610c1f5688c058095188165c338a51bff7d4813601dd707d019a2a23250"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.11.0/canon-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "d9b09ea6cd0d01ea6f21501e6a09ccef3459929c7bf6b3f33357fff1b0e2afbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.11.0/canon-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "79afad1431c11ecc845b6fed02edc11067774e3401be30af9426e00a4327fd88"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.11.0/canon-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f732f1c36182fb4c0d6e14718ac808f1e44a0ee5d596a8910d43cc0f575bf324"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
