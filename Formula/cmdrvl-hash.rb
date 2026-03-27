# typed: false
# frozen_string_literal: true

class CmdrvlHash < Formula
  desc "Streaming content hashing for JSONL manifest records"
  homepage "https://github.com/cmdrvl/hash"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.3.1/hashbytes-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "6299d634549037ebc9873a32333f5c81b75d0066e77ae98c03a24f6109f224bc"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.3.1/hashbytes-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "ac72a7bededaff070641cea8bde5809595d33d819972c9fed5a9c91a53ee6166"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.3.1/hashbytes-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c7163a18549a3745219f03ee435efac67c1ab43cfb5f5449265dc82fd646dd14"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.3.1/hashbytes-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "829a948c99db854478438fce335798fd111806c7ac8f88b585692726eba6c5e7"
    end
  end

  def install
    bin.install "hashbytes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hashbytes --version")
  end
end
