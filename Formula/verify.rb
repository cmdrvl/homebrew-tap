# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  version "0.2.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.2.1/verify-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "2897b4840b6e676316a2b24568c2bcc62a92d274eb7854787091a1ee9b43d2b5"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.2.1/verify-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "d80e89d0a8331d39080e59b1fc0aee170d7f080c45c6cba411d05fa6ce4b44c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.2.1/verify-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c663b752284533664c8e4b2db2df64ac64684c43de0f66bea4eec643a8c99e5"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.2.1/verify-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2a205575ab563522bee2bdbe06a0105ded175acd850b611c14e07413f1e08c4"
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
