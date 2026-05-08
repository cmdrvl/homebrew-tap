# typed: false
# frozen_string_literal: true

class Vacuum < Formula
  desc "Inventory artifacts into deterministic JSONL manifests"
  homepage "https://github.com/cmdrvl/vacuum"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.4.0/vacuum-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "dbfe3ac79635eb94a23c3595bdedaf619fe3583ba49d1de286411d07f03aded0"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.4.0/vacuum-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "d846d1648b667f9bb0a9a261f50f82f4ae1c014b5dd868292b40ad331e283ded"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.4.0/vacuum-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6e9eef32bffb1c27eea6a747e3a6809657e0904a80c27221d744882b18992a3"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.4.0/vacuum-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd8dc10c698c51d9d0e82bc6eac0f918a5d1c4edad0f3820e3d503125db64dd1"
    end
  end

  def install
    bin.install "vacuum"
    bin.install "s3-to-vacuum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacuum --version")
  end
end
