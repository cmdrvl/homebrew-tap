# typed: false
# frozen_string_literal: true

class Shape < Formula
  desc "Structural comparability gate for CSV datasets"
  homepage "https://github.com/cmdrvl/shape"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.10.0/shape-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "a25b908f6c9c20b6c63348a104fde70cf7d5b775f6184cdae88c23807b336308"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.10.0/shape-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "0d94b73c4335b0305ec2e435b341c43f7e6bc437779c215764f8d68a2957b22c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.10.0/shape-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f01db30ca690199154a1db76578cf695dc10c714f77684814b64092209e17507"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.10.0/shape-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b13b5c83553e5fb27801a3a2d2872772b77d1f00cdcdaa492cdff7f1ab3367c"
    end
  end

  def install
    bin.install "shape"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shape --version")
  end
end
