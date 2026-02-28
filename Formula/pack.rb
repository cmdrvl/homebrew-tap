# typed: false
# frozen_string_literal: true

class Pack < Formula
  desc "Seal artifacts into immutable, self-verifiable evidence packs"
  homepage "https://github.com/cmdrvl/pack"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.1.0/pack-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "fce506c2e0bd2084dc7575f3333b0604bdaa90a87471b77a493ff4ef796dc332"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.1.0/pack-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "bcc562f8435eaefb31c7105af978b3cb9962e7c551891946b95ff2e4ad20a74f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.1.0/pack-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46fb80e3101db6a908bfd710a3f3d08231cb9e063b22b23b2d5d594ffe8cdb3b"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.1.0/pack-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04be3256c982b85418bf3c8a5331e75864a6b5ddb5fe5f7962f803ddcf3e61d8"
    end
  end

  def install
    bin.install "pack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pack --version")
  end
end
