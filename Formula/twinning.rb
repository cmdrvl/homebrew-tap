# typed: false
# frozen_string_literal: true

class Twinning < Formula
  desc "Protocol-faithful interface twins for fast extractor iteration"
  homepage "https://github.com/cmdrvl/twinning"
  version "0.1.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.1.0/twinning-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "b5fe91a8724e97ceb746cff2fba4ae2f97f179098780aabac12c3fc2fa54b41b"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.1.0/twinning-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e317897b9b61363f703ce532ba02b35b10a8498e7bd2f26a8a08912e650d1e49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.1.0/twinning-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c83efd77c9724a44c0410c571823e8fde8cdc3bd377259b86a53bec42599502"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.1.0/twinning-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "430ea9dbf3d9c111abcc3579de94f13f5d1634bb9f45528ec94892cf25d1bfa8"
    end
  end

  def install
    bin.install "twinning"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twinning --version")
  end
end
