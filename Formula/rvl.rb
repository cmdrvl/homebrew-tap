# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  version "0.3.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.3.0/rvl-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "9fd6ce0e3d4255a5494e0e96efa9674c02670cef43298e6c8f5a9843433f8160"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.3.0/rvl-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "a26d655172ac19b2f2a69ad24b39cceae0139dd7e3c6886a01053baa8328763a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.3.0/rvl-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14bfd2f64edf60b577ec3f521ef2a0df404e11925c12cceb0ac8c18fe1ab5b56"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.3.0/rvl-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "332b02359ee5f9ae3ab41045aa743557140c1bf50d1a70eb94bdf350d1cc7329"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
