# typed: false
# frozen_string_literal: true

class CmdrvlHash < Formula
  desc "Streaming content hashing for JSONL manifest records"
  homepage "https://github.com/cmdrvl/hash"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.3.0/hashbytes-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "d588cbea0c8fdcaa954dc4bdf22cd05d61c57090ff62027a6bade870c657a622"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.3.0/hashbytes-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "ace0758fbb565a20317a708afd1bb64152899933f0dc66c7aec8f2995c175aa4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.3.0/hashbytes-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b56a37cf513e82e76abef842baa501abb970238afe3f56d9b2503946a55885ab"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.3.0/hashbytes-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b8c4254d5cd8dd954e5a0f7013ed98246a618df7a812f4c15ebfeb5217f37e8"
    end
  end

  def install
    bin.install "hashbytes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hashbytes --version")
  end
end
