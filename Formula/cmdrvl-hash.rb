# typed: false
# frozen_string_literal: true

class CmdrvlHash < Formula
  desc "Streaming content hashing for JSONL manifest records"
  homepage "https://github.com/cmdrvl/hash"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.5.0/hashbytes-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "6d6ce782559caca943813e750731d0844aa96e2508836027c5844d506432fee2"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.5.0/hashbytes-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "8b81d812efc2d3525d1703a89ec14aa1e08e3e479603f6d51231818888b2ec70"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.5.0/hashbytes-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00ace84bfcb670bfa1ca37d34413a451944e9a0c1f06ea5ff3e3d8175cc833d9"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.5.0/hashbytes-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "977f6486c62f9d561befcaf381f22cf638c0b042db243fbf7f3f66cbc0ecf5c6"
    end
  end

  def install
    bin.install "hashbytes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hashbytes --version")
  end
end
