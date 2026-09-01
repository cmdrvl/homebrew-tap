# typed: false
# frozen_string_literal: true

class Shape < Formula
  desc "Structural comparability gate for CSV datasets"
  homepage "https://github.com/cmdrvl/shape"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.8.0/shape-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "5fffc57c577c27deade57446750e7a60baf79fcf8516b13e0a6d371aee2d1871"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.8.0/shape-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "5382d564b0a4b32a7f7f6a0f0a9b5e685659967c910055e7414f8be2260fe51d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.8.0/shape-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c5a6960ddf51ccd671470ac6ba84ee63edd9dbf97c9ac0cb2f31a3c0c4fbf7ab"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.8.0/shape-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a74986487c220881578065d00ccadbe668f376e5df72ba4a2c7eddd801a5b39"
    end
  end

  def install
    bin.install "shape"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shape --version")
  end
end
