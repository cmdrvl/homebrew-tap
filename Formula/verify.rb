# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  version "0.3.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.3.1/verify-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "e0b3ae985bcc8444bb24d4a67413728b66c58b81e86dced480843c1eb7f3f2ef"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.3.1/verify-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "527477f6d2ce835d17f7f930dd60347a06e013564c72e2b52c31e1b6a929eb3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.3.1/verify-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a5825094022ad8891f92f1b809606fe4d63253a3c6d05721a4b6925281361773"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.3.1/verify-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33f60571f0556eb163a41a8a5b36b39ba0d63dfb11af96cf878501eda0961c64"
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
