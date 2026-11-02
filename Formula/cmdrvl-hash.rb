# typed: false
# frozen_string_literal: true

class CmdrvlHash < Formula
  desc "Streaming content hashing for JSONL manifest records"
  homepage "https://github.com/cmdrvl/hash"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.5.1/hashbytes-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "c28de433c8bc6b96c9b1657bd02ae09eff70d1bb6db05cab2952ea7752996db9"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.5.1/hashbytes-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "af0ea4b28a2c3365d38b577bbe61f09ddd0ac4c8a95ba992f088ea25b19e2f24"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.5.1/hashbytes-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb12cc1b815013a8bc6c0e3830e99c6c067eae0665b6c2c41b2f1bbcd40b3a19"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.5.1/hashbytes-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3dfe3285fbc7af13e3085f1f0cc116bff9e2109af5537e821fdd0bf3c6f22cbe"
    end
  end

  def install
    bin.install "hashbytes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hashbytes --version")
  end
end
