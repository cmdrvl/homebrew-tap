# typed: false
# frozen_string_literal: true

class CmdrvlHash < Formula
  desc "Streaming content hashing for JSONL manifest records"
  homepage "https://github.com/cmdrvl/hash"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.1.0/hash-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "84430dc3d320a908b812de35558c19ba108d4c5a8951c4c5e840f131712382d0"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.1.0/hash-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "b9c34fb81261013ae96c0314a6dd4be01e1556cdf203fbc43590161a4299d225"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.1.0/hash-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d6c2ff78929e3f671a2d25d18221eaf0494dadb0eb9d42e860ad0b228709828"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.1.0/hash-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26c2f2d348545cdea289df77b8803544942423b2f254a97357793c8a3a72ed66"
    end
  end

  def install
    bin.install "hash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hash --version")
  end
end
