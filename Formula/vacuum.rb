# typed: false
# frozen_string_literal: true

class Vacuum < Formula
  desc "Inventory artifacts into deterministic JSONL manifests"
  homepage "https://github.com/cmdrvl/vacuum"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.3.0/vacuum-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "d71e13a87cf160295cd64da5d6c9c1563fd384ed47bc9ef5c446822305621adc"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.3.0/vacuum-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "9290fed6ed7abc738ad9e0362310a3e840c241e27ba7ee361df9821e15112d50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.3.0/vacuum-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5a2ad80ab58e2e846f58c691af81ac547af43a15b6059646deae23cbfa74ca9"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.3.0/vacuum-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26ce8ba5b718a29a0a45d3a058a26ef14982773a7d6cb941a3eb360b436b3143"
    end
  end

  def install
    bin.install "vacuum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacuum --version")
  end
end
