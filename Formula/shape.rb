# typed: false
# frozen_string_literal: true

class Shape < Formula
  desc "Structural comparability gate for CSV datasets"
  homepage "https://github.com/cmdrvl/shape"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.7.0/shape-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "911b75d385a4fd0524ba475661d033a467406bed4531360d64faaf99f21ff79a"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.7.0/shape-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "441cf59342ec2ef735d8f3a855e65f3b0acd37b415ac24955d8cd1d8f49c59ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.7.0/shape-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "554e6f6a7c1f0939d4f5c5812161479b199f37d79526acf3a0406003d5524586"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.7.0/shape-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd11b2554e84933b7a6c001b1c22fdc6fe315312f769ec6ec4b001a0ba503610"
    end
  end

  def install
    bin.install "shape"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shape --version")
  end
end
