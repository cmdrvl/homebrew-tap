# typed: false
# frozen_string_literal: true

class CmdrvlBenchmark < Formula
  desc "Gold-set scoring for extraction pipelines"
  homepage "https://github.com/cmdrvl/benchmark"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.1.0/benchmark-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "75ba24196fbe1338b006b86139723a661e190b0ed115ea7dd6e360bcb3e4749a"
    end
    on_intel do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.1.0/benchmark-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "68071c9296b3a6c051a07169cf3086b34239fdd6cf0feb9abb39cd39253923fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.1.0/benchmark-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d75a99dd25faf46047ba6ac6462251ab6c218615c72980999c99f8ea520d000"
    end
    on_intel do
      url "https://github.com/cmdrvl/benchmark/releases/download/v0.1.0/benchmark-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bce8a9bbd8c7f3e5490b51504556283004a0b5a8becd1c783fb82e11b8523b98"
    end
  end

  def install
    bin.install "benchmark"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/benchmark --version")
  end
end
