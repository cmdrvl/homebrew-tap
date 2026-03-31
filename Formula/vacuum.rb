# typed: false
# frozen_string_literal: true

class Vacuum < Formula
  desc "Inventory artifacts into deterministic JSONL manifests"
  homepage "https://github.com/cmdrvl/vacuum"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.3.2/vacuum-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "178d967a355d9026c11a756e4fbdafee1af396d99ca35abfacdafe9febc7d0c8"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.3.2/vacuum-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "d6eef63661ee06ab70d51c03dff7e8d7f8bc495c8bda6939f573b59d4faa64c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.3.2/vacuum-v0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a353211dff1342d5724f7c953c7b097fe349a0ea6f51cde7ce8a593c81518cd2"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.3.2/vacuum-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "546e694e1f516d180834cd9ef385b7c0e8196c05e7877c1353cb204e6cd1d600"
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
