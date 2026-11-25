# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.6.1/verify-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "239707aa92c2d827ed852ed03077baa4b34ea7406643217967c685225217cae6"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.6.1/verify-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "71a86a384c0489e702116e3f19248e3dfd9132c9ae93d02b31089d441297feb8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.6.1/verify-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c7de50304bb6fc5c9fe9f6a7266c28a2c4a291d6cc59c43514fbe5254b3f86b5"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.6.1/verify-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "daf775caabdd439f3f21960a4fcb2fb2dc920a10de5716d421724280991a1f8b"
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
