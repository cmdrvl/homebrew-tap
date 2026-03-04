# typed: false
# frozen_string_literal: true

class Vacuum < Formula
  desc "Inventory artifacts into deterministic JSONL manifests"
  homepage "https://github.com/cmdrvl/vacuum"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.2.0/vacuum-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "63a2c22042d8c7a52e45beee69d50a50938c194e2b8149a672512a7f74207849"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.2.0/vacuum-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "cbcabda6a60cce20debd0cccdf5411efdaf9f8505b3514b621c8bb7b3fffd232"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.2.0/vacuum-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6655afedaa8bc5abbce1bdac747e104678a66c4313e176366e66ced77c3796f4"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.2.0/vacuum-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f911dbbadf9797ee984b646933c8759f338499fe99cd47a843986612284cc32"
    end
  end

  def install
    bin.install "vacuum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacuum --version")
  end
end
