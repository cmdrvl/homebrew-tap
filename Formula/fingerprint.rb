# typed: false
# frozen_string_literal: true

class Fingerprint < Formula
  desc "Deterministic structural fingerprint for CSV datasets"
  homepage "https://github.com/cmdrvl/fingerprint"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.1.0/fingerprint-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "bd5fcf7b804a12b281f3416b17b444149ecbd7e4c11b96ae6531e22d17941044"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.1.0/fingerprint-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "afae43974bc006b822c5098584734fd00e16462e48fcec7bfabf23cc63778b04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.1.0/fingerprint-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c9c443c6732281cfc724b0ec56abcbf2ae6396250d50119eb2ba77c3bf8284cb"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.1.0/fingerprint-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dbb7c587dcdcfbd4559922613b3439c65c400ed3e41ec8b85be85b4cf6647627"
    end
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
