# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "0e77895d4777f49caa6f21ca9dbb12fe0432432be6b885b1512037dc9a41462e"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "e296a88ad2feee5bbdcbaf1fea67925680fc08d71db1f1ef05624200518189b8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d12942e5e8ff07d27e81eb5f28f227e7f597a53f0fc48f1e55247a4b6e0e918"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bcdf189531566aa9890e3f5baaa6ab78b3fd02b85565327727256f6401fd826"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
