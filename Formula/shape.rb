# typed: false
# frozen_string_literal: true

class Shape < Formula
  desc "Structural comparability gate for CSV datasets"
  homepage "https://github.com/cmdrvl/shape"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.11.0/shape-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "2e3408b332c1fab2866567decd0948fef120f9bb027666c3800cea173cc938a1"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.11.0/shape-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "c51bd9571d55b07d154f951f5bbe54184cd05267c4c8a94ce5eab7868c7b283d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.11.0/shape-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "634a9ab79ca67f3b97beaa3bb2eca388e72b353b5c53aa35644ed94ca97b76ee"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.11.0/shape-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "430fd89609dc6debbfcbdacbabd06cfe4bcc7295dffa61d3a3d2f580cecdee66"
    end
  end

  def install
    bin.install "shape"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shape --version")
  end
end
