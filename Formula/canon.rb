# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.7.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.7.0/canon-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "542f916e71f8b7a8fe7515e93278716391fa31b2f012895913a64eacb6cceda7"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.7.0/canon-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "579eb19b61db51e9af3c80c54fdb1f5aab8a1040058aa8e8274ae97d61f17ace"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.7.0/canon-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "980a6ca13d9e26f8fe24d643d213f71a9c16c578979222b2c2ccf7acff5a863e"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.7.0/canon-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1650271a6b4632d635441a2bafdef67a6b538d0b9f428c81b35eeeeba8de196d"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
