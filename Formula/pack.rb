# typed: false
# frozen_string_literal: true

class Pack < Formula
  desc "Seal artifacts into immutable, self-verifiable evidence packs"
  homepage "https://github.com/cmdrvl/pack"
  version "0.2.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.1/pack-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "1a230cfd53a0e8c01a0aaf79961ff9ff3da3f9fa294a57338f159d9916968681"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.1/pack-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "b001724b990808e414ddef8b618d115e60f998970b87a6b0bbe4682478f1d903"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.1/pack-0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a43bad5003663b4bd6e2952f33a8373714468736353de16d4d4eef6e461c906b"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.1/pack-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e1e229c4e028e70d0f0c7b694846a76f6b89510759ae96d4a80a18714aae34c"
    end
  end

  def install
    bin.install "pack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pack --version")
  end
end
