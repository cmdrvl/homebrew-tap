# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.15.0/canon-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "b47001d6fa6852053115e884eb7ecb20b328deaf75995a9a358a03ae2121f4db"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.15.0/canon-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "2514d728ea4c6af6ca72f61e13ce1d73ec70bcf390f2f583360eb78696ebf218"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.15.0/canon-v0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63911d593cb893a34fd69eb1db0952871298fb7f333ad6e953cc37af43a8bb35"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.15.0/canon-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5be6a4e3194ade19b871cfd04b19946c7bc3858606f285cb5f11c0f63b1e28b5"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
