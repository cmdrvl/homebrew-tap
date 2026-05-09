# typed: false
# frozen_string_literal: true

class CmdrvlBenchmark < Formula
  desc "Gold-set scoring for extraction pipelines"
  homepage "https://github.com/cmdrvl/benchmark"
  version "0.2.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.2.1/benchmark-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "c85bf936a90d34c75439bff311223e77f5fc415d4b0931169fb36bf4a53b08c2"
    end
    on_intel do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.2.1/benchmark-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "5fdb94f0788723ad3dff29410f1bc7caacbbf9e2a765d39e96487d6db7ed846f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.2.1/benchmark-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52166a425553270769df45aa4e57b6c84336813e937b03cdb67190a548299c76"
    end
    on_intel do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.2.1/benchmark-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b280331d68c973cc4a091a9cbca9dad2b75f257aa89b0a9b5d58379d1db3fea5"
    end
  end

  def install
    bin.install "benchmark"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/benchmark --version")
  end
end
