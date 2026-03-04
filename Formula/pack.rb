# typed: false
# frozen_string_literal: true

class Pack < Formula
  desc "Seal artifacts into immutable, self-verifiable evidence packs"
  homepage "https://github.com/cmdrvl/pack"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.0/pack-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "1943a93ed5efd9bafc0aa64fd6f2eb739951bfb13c8a1a08ace279a4566288a5"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.0/pack-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "13058e901282821aa16a5643205ba7d7edb3e04c0fa38a5c88c5b41c04bef7e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.0/pack-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b46ac73bb9a0d25b15ad5ba7c6ddd8f0f167c457f892f2da8458f4db4c924f6"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.0/pack-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92751f11c3af78ccee01e229c11912f2d734a0e003811375a24a04f13e44bcd9"
    end
  end

  def install
    bin.install "pack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pack --version")
  end
end
