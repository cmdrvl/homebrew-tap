# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.4.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.4.1/canon-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "fb3e5832df04e87a172749dac1ed722e666f982816937c307117249afcf6e032"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.4.1/canon-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "f5ce8f7ed9a29a8668a80f24c746efeac609400d7ffbc123561ca2115c9086e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.4.1/canon-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff5476a9a2dd8ad7c4ec6f988b08953dc46945d9c45b705375c1a3275ebcfc9a"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.4.1/canon-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a8df86e094dc9b1b6b039b098ac477f12be55ed8f52eec4968aa33f987816b9"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
