# typed: false
# frozen_string_literal: true

class Vacuum < Formula
  desc "Inventory artifacts into deterministic JSONL manifests"
  homepage "https://github.com/cmdrvl/vacuum"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.1.0/vacuum-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ee2c436137153c652f0850f519b68ec06ce0498ece393235d0f169ae1faa271e"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.1.0/vacuum-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "eafdf476338073dc84ccc25f225b713fd058d8a85770e7ff7c5d4cfeb5f28d39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.1.0/vacuum-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "025b61c97ac231fc1d0a83425c1a51579806dab4f580acbd7c996b1f550ae5db"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.1.0/vacuum-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e2e3c8d32608406e9ec2c31654e914d3c29f2716f17ab3de7bead46982b8650"
    end
  end

  def install
    bin.install "vacuum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacuum --version")
  end
end
