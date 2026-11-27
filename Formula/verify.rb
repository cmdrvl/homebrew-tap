# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.6/verify-v0.7.6-aarch64-apple-darwin.tar.gz"
      sha256 "5b77ea01ae8cb43edfad8050f0cd1274dbaa82f2a94f759e869140cd5702450c"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.6/verify-v0.7.6-x86_64-apple-darwin.tar.gz"
      sha256 "5a01301fbb880c6c31f0ebac9187b5b0e72dfcca593363b1777a0570d2f49e7e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.6/verify-v0.7.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4efbb9082692ad18f758bd0c40a672fdf0c6bcf1842449b0107cb09c85275dec"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.6/verify-v0.7.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99f3ab69ee2ebfcd5b9a3d1f8b47360bde96e65e9d8b1c17e3f253019bd97b7b"
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
