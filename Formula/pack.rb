# typed: false
# frozen_string_literal: true

class Pack < Formula
  desc "Seal artifacts into immutable, self-verifiable evidence packs"
  homepage "https://github.com/cmdrvl/pack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.7.1/pack-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "8493b993f04c57bd70cc1ea516feeea6702050c671fa481f26bde2f7b98b3115"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.7.1/pack-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "0a280cd1f13388fcda3bddcced4876b24cad87635d0d250cc17fa2a5f74babb2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.7.1/pack-0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d810cec742ce3fd5daf04d712e6f3dc3ed6b15dffd49ff19f871c9dd6eb7d2fc"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.7.1/pack-0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a6f1486dd518585cf8c64617ec7a98668cd4b0c722c6305f94266b52940441e"
    end
  end

  def install
    bin.install "pack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pack --version")
  end
end
