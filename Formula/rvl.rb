# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.1.0/rvl-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.1.0/rvl-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.1.0/rvl-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.1.0/rvl-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
