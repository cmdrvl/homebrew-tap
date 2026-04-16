# typed: false
# frozen_string_literal: true

class Shape < Formula
  desc "Structural comparability gate for CSV datasets"
  homepage "https://github.com/cmdrvl/shape"
  version "0.5.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.5.0/shape-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "e1e8a2b0862a19c3d28e3acd98e3b557a91ed95b8c6ed6622ff4c3952f8af823"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.5.0/shape-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "cdcb8978beac9e932aab9413286db9df1be8c623d02b527319b765615d28502b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.5.0/shape-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5a5dba9ec3c22abb3b56009d54b907921ad637bc330c53cb9fc325c7e5c6a00"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.5.0/shape-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a133093cd36a734edba48474b8c339abfdd3206da7ef074451ca2b27108a444"
    end
  end

  def install
    bin.install "shape"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shape --version")
  end
end
