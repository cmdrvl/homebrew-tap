# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.4.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.4.0/canon-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "0c6f9e6de00486c8b8ae4a106d6116a9948bcc3204b46c0644a090bb7c4a86d0"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.4.0/canon-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "a7cc5a4bb0e38d2800e97d4c2a61fa7e26031ca1850bc3b011c152a28866cd29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.4.0/canon-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0268a3b9e9d459f927acb94f7514662c77e2d7058c4f04bb3e1923d8a08c839e"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.4.0/canon-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f0be4dc5c1e40dea27f5677c180564dcd3f0e2b6e1ad62343edf1c104ea0acda"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
