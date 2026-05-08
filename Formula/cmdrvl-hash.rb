# typed: false
# frozen_string_literal: true

class CmdrvlHash < Formula
  desc "Streaming content hashing for JSONL manifest records"
  homepage "https://github.com/cmdrvl/hash"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.4.0/hashbytes-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "7feebd30280ddebcd90ed24872a7c1793e560abde00e04e18faa4d2c04f3ddea"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.4.0/hashbytes-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "7813fd367872ee8cdba94cbd00ca32993cc5d4895ac7fdb0c4271c6d103dc93b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.4.0/hashbytes-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6db2b38382ad79ab5365111aff629ff506587f40b7ea44d455e70756ec5d5bb5"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.4.0/hashbytes-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de36894431bb4d5d7311ff74395ea1c0c44fcdbe5114266bfeaf4ec5b7961ddb"
    end
  end

  def install
    bin.install "hashbytes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hashbytes --version")
  end
end
