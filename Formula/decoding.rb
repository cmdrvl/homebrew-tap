# typed: false
# frozen_string_literal: true

class Decoding < Formula
  desc "Deterministic convergence engine for legacy-system archaeology"
  homepage "https://github.com/cmdrvl/decoding"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.4.1/decoding-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "40d0fe3c5cd0538b53f4888d36d503aeae9639c52484252df302e00c7ff99811"
    end
    on_intel do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.4.1/decoding-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "d0f9c34d4559e8f3778f84e188f7c17612b5ad828b02a660429bd291c4ebfc1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.4.1/decoding-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "551961d2f66207e1d6d9f03eb04a88af9846c53bb0d279f453bcb4c3afe2fcc4"
    end
    on_intel do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.4.1/decoding-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef1716b8028ef001b1fbc6838c84e90280b3d917e857ba84b6091be0cf951649"
    end
  end

  def install
    bin.install "decoding"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decoding --version")
  end
end
