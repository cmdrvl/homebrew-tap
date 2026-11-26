# typed: false
# frozen_string_literal: true

class Pack < Formula
  desc "Seal artifacts into immutable, self-verifiable evidence packs"
  homepage "https://github.com/cmdrvl/pack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.7.2/pack-0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "21acc8fc38e227ad8f8688f418c6b78216cd3da8d015ccadadc6f92a4e785748"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.7.2/pack-0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "5d0926992fcf1ca73c93389b8dae19442896382e11129e7bcb47f1e9945847b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.7.2/pack-0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af493468a1ffe454cd1488703c523f79407422baddf922609600a6da0be4695b"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.7.2/pack-0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b9d4aac2e833fd601acd7d2ff7f6f9b3876b52b85bf8eee28e4f2a18475ccab"
    end
  end

  def install
    bin.install "pack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pack --version")
  end
end
