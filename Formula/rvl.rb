# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.8.0/rvl-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "3e9a716d4577891df74a86a5404af0326b64161e9a30fd30f27fc4d8d65accf2"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.8.0/rvl-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "20ddacbd6ac8a0c6d01a9a759e7a909153eb2c031f7faee12d00eef11db40f9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.8.0/rvl-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "428d9a284617294c675cc403cbf45c53d8b24a8f8335a21cada1d3a79e196106"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.8.0/rvl-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cfcd81eca896edaeb7b4a08d095aabed22845325a79904d7f71e5535346b8ee1"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
