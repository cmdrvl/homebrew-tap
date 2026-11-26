# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.5/verify-v0.7.5-aarch64-apple-darwin.tar.gz"
      sha256 "28fe07e8ae2f9c7ffc842c62aeef092780bd6e05214adc5847984b474fb62c8e"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.5/verify-v0.7.5-x86_64-apple-darwin.tar.gz"
      sha256 "162e4b826bac076a996c123277d98fa1b7594c7d6adc2fb65401070ee309ae75"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.5/verify-v0.7.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0ca732983573c826b8f43b18cfd8ac0ac65a8f6b869560cc69210af99ae3e57b"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.5/verify-v0.7.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8dc5c16610e8ac551be59a8e1fec3dcab81d2f3a5228c023d2135aa851f7b12"
    end
  end

  def install
    bin.install "verify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/verify --version")
    assert_match "verify doctor health: healthy", shell_output("#{bin}/verify doctor health")
  end
end
