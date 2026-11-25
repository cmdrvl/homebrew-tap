# typed: false
# frozen_string_literal: true

class CmdrvlBenchmark < Formula
  desc "Gold-set scoring for extraction pipelines"
  homepage "https://github.com/cmdrvl/benchmark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.4.0/benchmark-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "0014104bb9ff568f336f93fa0c6c462c72f14b0726ed8fdbce3da8d60eef59e1"
    end
    on_intel do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.4.0/benchmark-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "e86ab1fc01463ab0b429bc81df40d966f335592ed4ec0da625298e78ad542b82"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.4.0/benchmark-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4274045de981dfb7be447c7b937f97a7f3defa0bb317b1e4772625b2bd018ef9"
    end
    on_intel do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.4.0/benchmark-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "847a0342676c3794781db183477b986d5eb38e069cb148b7432832aaf8ff72fc"
    end
  end

  def install
    bin.install "benchmark"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/benchmark --version")
  end
end
