# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.4.0/verify-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "43d946f696d66b9081a632d1958aff69e4cb4f76930b5ebf1f5afd91306f3cb4"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.4.0/verify-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "94965df7cc21c3b67728a310d19ad688b7fa97d5dfbd5fc540236df13805a633"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.4.0/verify-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5681c3d7303d5c90849756383618f7c0ba3fcc65e10598fdc7d52960a5bc4c38"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.4.0/verify-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7c0ac6259fdc33da8e9b0e7b7d05e773722e6889a5eafd0d5f40fef80eae306"
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
