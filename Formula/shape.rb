# typed: false
# frozen_string_literal: true

class Shape < Formula
  desc "Structural comparability gate for CSV datasets"
  homepage "https://github.com/cmdrvl/shape"
  version "0.6.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.6.0/shape-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "aa5d9ca24df97135ff48773d3b57cc1b4cf36b43673108a4b33923301bd17807"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.6.0/shape-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "f3806387d001b362b0676b6d4002d7bd365ca16b6d0a88502415d82f32a10247"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.6.0/shape-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "893fe17877a1552d2376826d981bf2f708b1c866e0028dd6178521d8700015ad"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.6.0/shape-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a68cc876aa5fc09ec1ccef872ec17f70b45f6f67a74b4d537eee6eb7bf7e6d5b"
    end
  end

  def install
    bin.install "shape"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shape --version")
  end
end
