# typed: false
# frozen_string_literal: true

class CmdrvlBenchmark < Formula
  desc "Gold-set scoring for extraction pipelines"
  homepage "https://github.com/cmdrvl/benchmark"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.1.1/benchmark-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "117870548a76cdc8b8e8cce44bfb75eb13f53914ab5405ee6640dfefd948ec1f"
    end
    on_intel do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.1.1/benchmark-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "356f1c192b631d9087dea495a407c5e61e2af8df91b041330a1ac3d15e85e31b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.1.1/benchmark-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aef5e05187a6911672c5e427f18a5896b0632e01c5e99395adf22c18a22d20a0"
    end
    on_intel do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.1.1/benchmark-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a2b420994abaa7f7d49ce0c455b42485b0b89c9ecca57b5e51ca084bda7a4353"
    end
  end

  def install
    bin.install "benchmark"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/benchmark --version")
  end
end
