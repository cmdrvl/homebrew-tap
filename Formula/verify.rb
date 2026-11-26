# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.3/verify-v0.7.3-aarch64-apple-darwin.tar.gz"
      sha256 "fcf287b3991d813e1665f4d98143094b1f40c59299d55866bc819d3948e650c2"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.3/verify-v0.7.3-x86_64-apple-darwin.tar.gz"
      sha256 "f443a0d37bd2df8e48fa16517b09eb058c2e7758e780586c0c94b41563161360"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.3/verify-v0.7.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b2ff6c2a1bb7aac56dd2981f5e099f6d3314edea0d6e9c5aa9924708954f149f"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.3/verify-v0.7.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89e0cd5f1679a33c594fa5dfcff681dbf156b8256a3b2fa6a0d60a1f0343d39e"
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
