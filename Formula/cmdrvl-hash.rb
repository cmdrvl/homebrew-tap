# typed: false
# frozen_string_literal: true

class CmdrvlHash < Formula
  desc "Streaming content hashing for JSONL manifest records"
  homepage "https://github.com/cmdrvl/hash"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.2.0/hashbytes-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "ae22b577f2dc2b7c08e96be5214e03b66ad2aa879cc400c9102c9292572cca03"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.2.0/hashbytes-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "7c7d6bb59e6f742a49b9088644f6574f80acc8e3e5383753fca5f5fc2f915c41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.2.0/hashbytes-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80bbc72ce210d60d828bfc778cf98f9099726bfa5013cf619388d3f0d17b8683"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.2.0/hashbytes-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4afcd88194c9f42fbab25e9b24a5b91fd25ba15358b595a552d4ddff8d04cba"
    end
  end

  def install
    bin.install "hashbytes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hashbytes --version")
  end
end
