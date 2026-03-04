# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  version "0.5.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.5.0/rvl-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "2acbf457622b2e7ae37e30b7e2895a6887c59f2d1c52abe7a908dc9ec2ee6275"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.5.0/rvl-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "d887db48110b56a2a8eed6da8427cbdd023f0cde2ff5e62e1c105bb4b2cac138"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.5.0/rvl-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea01ce2849452a829e243ec8ebe53b95cb3f61c8c7c5c179246bbee0fcd8f0f2"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.5.0/rvl-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e4b7b2c91ec2aed8fa9ce66c6052b579bad48ca0c02ffb5da522d3514094908"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
