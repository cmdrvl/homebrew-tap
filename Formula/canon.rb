# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.16.0/canon-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "29b933a6342911e7e9029b1f819946f1192f31605daf06c00e137f2c45a508f9"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.16.0/canon-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "4484dcba18fb8826c3f136d0dd59cfe9baaab90ab89eb5445a3578c584c9aad9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.16.0/canon-v0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e2f3f245d4cd07cc82bec03c68210049970953e9525428f5c45969c19e1eb1d8"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.16.0/canon-v0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37097e033e08ab30c0a2a6fc9fc650369e2377f3dd5a0fb1729b812ce07f0eb9"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
