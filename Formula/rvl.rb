# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.9.0/rvl-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "5226f02ca33353f193112a6b5a662483468053c37309b5e569f9ee274f2b7339"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.9.0/rvl-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "7fcbb934a201ea3cf9a3d0fce22522ffebfb5495b9e04fe5943b71b2d7c67386"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.9.0/rvl-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "253723b60c480212d635f2a360f9c325e2d1379a561fffc7e778cc90e178d242"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.9.0/rvl-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "495d0f9557214cde4da5f2c9524ed4c0fc7b5597d560534c10af7cf828bb4f52"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
