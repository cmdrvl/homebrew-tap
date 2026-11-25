# typed: false
# frozen_string_literal: true

class CmdrvlHash < Formula
  desc "Streaming content hashing for JSONL manifest records"
  homepage "https://github.com/cmdrvl/hash"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.6.0/hashbytes-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "8b7fe303bdb3a06e6851f61578fdd5ac6792a1709ffc474d8a1add7fb2f45b64"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.6.0/hashbytes-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "846fc2ff670fe3b03f2551f51ddc68caaceb9a79631d1f57280e06076a23df13"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.6.0/hashbytes-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "69a7c0236d17a0e247074d3c25e897676aff5fb49a901e0072197f7f5ad701d6"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.6.0/hashbytes-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a29078b4e00484370a27a4e59deb026009230f41bd7b7b9403a6d3b20986e2be"
    end
  end

  def install
    bin.install "hashbytes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hashbytes --version")
  end
end
