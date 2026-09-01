# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "a7f97845d7dd246b86677f5bd0c592a2a2ade83b3243b7a77bcfda3e3b48b301"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "ddb21a95881a182e5db958d81ea569c62c7ea85a20580ddec185fffae355fb32"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d491a071fdcfd8b318cc724f33657f02508ac7ceb6c9b1d9bff362eb160b2ec6"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d18e356aa2e948cde19bda8ae2a20240958ca4fdb24746e41cad66a636e8ad98"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
