# typed: false
# frozen_string_literal: true

class Shape < Formula
  desc "Structural comparability gate for CSV datasets"
  homepage "https://github.com/cmdrvl/shape"
  version "0.4.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.4.1/shape-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "3747d4305635da07e2c77bd37097ac2a95c6871273898fd11acf6ae75aa6bd3e"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.4.1/shape-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "2b29dba53cac359ebf813d7704977ad92099f3ac84a342e81fee12cbad1c2f5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.4.1/shape-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ba0ec0c5921e1460d2f4637dcb1082a4e1511d5b6499860aae0aea1c37c180b"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.4.1/shape-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45c76d420599a16ee5efdaa8db5215d87f5f414799203ca26f79d93c8d5a7b9b"
    end
  end

  def install
    bin.install "shape"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shape --version")
  end
end
