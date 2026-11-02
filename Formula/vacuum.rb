# typed: false
# frozen_string_literal: true

class Vacuum < Formula
  desc "Inventory artifacts into deterministic JSONL manifests"
  homepage "https://github.com/cmdrvl/vacuum"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.5.1/vacuum-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "f477be69907bc16980b718e2427384f972dbef5140721dc0caaebc22b6f6885b"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.5.1/vacuum-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "1354055be4bfd8e6a9d7fb99e04746f42a834851f6af643d50f1922d2b74629e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.5.1/vacuum-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f19ea93217665da63781fdff1c9f8bd19330b57bc86b3d481a510a1011b2013"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.5.1/vacuum-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d70a59f9cc64f8961f1b78ebd9a5fec31b4fd2b0aaa82c6f71f02d31383c1f6e"
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
