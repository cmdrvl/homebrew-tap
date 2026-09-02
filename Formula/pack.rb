# typed: false
# frozen_string_literal: true

class Pack < Formula
  desc "Seal artifacts into immutable, self-verifiable evidence packs"
  homepage "https://github.com/cmdrvl/pack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.6.0/pack-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "2a7ee31e750396a00047017b938a84a4f3ee8bc3a2f0da5b998fbcf769d29e6e"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.6.0/pack-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "f709b064b19b406c278066f3256ff6c5bc4c9548a828b6a33962bce761f49495"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.6.0/pack-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56101343f53108aea56c10f630d899d3812a295ff91eb30a86da8d863836db10"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.6.0/pack-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e6d59e2142f8ba67faf15b4e020f2691f561fe8384251f0895df57018347f60"
    end
  end

  def install
    bin.install "pack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pack --version")
  end
end
