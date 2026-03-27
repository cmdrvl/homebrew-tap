# typed: false
# frozen_string_literal: true

class Assess < Formula
  desc "Deterministic decision classification over a spine evidence bundle"
  homepage "https://github.com/cmdrvl/assess"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/assess/releases/download/v0.1.1/assess-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "b6439326e0a4888d19b486ed1f6e71a8cf1d208e7b3a9c1a3688b391d3a09bab"
    end
    on_intel do
      url "https://github.com/cmdrvl/assess/releases/download/v0.1.1/assess-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "1d9d32760f0a6f8ac85e3092f867a9d0e2a46881642f1ed177049eb8a1a4fbbc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/assess/releases/download/v0.1.1/assess-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d911d926abcaf6cbf391a2c2849bd03e5799af4c4fb60a32b269ba2128cca23b"
    end
    on_intel do
      url "https://github.com/cmdrvl/assess/releases/download/v0.1.1/assess-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78f6bc90c79b2afa6e0150d844ab1af0a3544524f9d9cc9af351974628853c28"
    end
  end

  def install
    bin.install "assess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/assess --version")
  end
end
