# typed: false
# frozen_string_literal: true

class Assess < Formula
  desc "Deterministic decision classification over a spine evidence bundle"
  homepage "https://github.com/cmdrvl/assess"
  version "0.1.2"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/assess/releases/download/v0.1.2/assess-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "8f78560a351f0c4b21104f025b3e2e9a070450368b07f730c3869666876cbdda"
    end
    on_intel do
      url "https://github.com/cmdrvl/assess/releases/download/v0.1.2/assess-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "95c9b867269b28f6ce2b7ae1bad4fd1b3dde7910867f57d577361d903fd634bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/assess/releases/download/v0.1.2/assess-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c1fa63eaf7df991aa9e8655ee1fb8533391e7706438cf7da10472013b082e99a"
    end
    on_intel do
      url "https://github.com/cmdrvl/assess/releases/download/v0.1.2/assess-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6bba6f5dbf6d94b4f3ddfd7ad6eb03b0650bce418a121a1cb381df7369cd3ed5"
    end
  end

  def install
    bin.install "assess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/assess --version")
  end
end
