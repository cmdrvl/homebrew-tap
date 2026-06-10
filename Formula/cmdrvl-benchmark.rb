# typed: false
# frozen_string_literal: true

class CmdrvlBenchmark < Formula
  desc "Gold-set scoring for extraction pipelines"
  homepage "https://github.com/cmdrvl/benchmark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.3.0/benchmark-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "a8ede84d489dc9be67dd2ffb744bb73e6fabb08fc99bc17a25c157a3b4de6142"
    end
    on_intel do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.3.0/benchmark-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "32e1d994f0cbcdecfe90ab471c531460daf89c2054cf546ca1f6647c59813c64"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.3.0/benchmark-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa59d0cafa6d074226607c82e6d906fdcd829ee52a42c3fd26a4dc246710cf48"
    end
    on_intel do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.3.0/benchmark-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10980a270066fb21cf918d3bfe31225ddf3272b307ff30d56505f6efe489bc95"
    end
  end

  def install
    bin.install "benchmark"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/benchmark --version")
  end
end
