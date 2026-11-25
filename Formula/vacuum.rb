# typed: false
# frozen_string_literal: true

class Vacuum < Formula
  desc "Inventory artifacts into deterministic JSONL manifests"
  homepage "https://github.com/cmdrvl/vacuum"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.6.0/vacuum-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "f6fe48b271aa3efa19a8b0950c57096aec37f155feb4b327158fca578215074a"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.6.0/vacuum-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "add753fd73a96f24bba8489fb045cef5ecdbdc48dcbafedc17ec4e0cb6d01a73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.6.0/vacuum-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4caae1131db07beed26deaa1dd6e64fb764472879efc9a61c66a2a9288673b0"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.6.0/vacuum-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eba01aefc770f28042d80e4dc5d3b5e5a46cb7bda162ef042b2b9fe0e78270c8"
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
