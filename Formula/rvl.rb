# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.9.1/rvl-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "9d10dda1bd7cce1cb1c21fd81d597d0d257c5f53e303dae9087f5c3f40eee2e6"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.9.1/rvl-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "13d48473fd797493de1e6b170d536789e0dfd4a452354c1fffbd964ad76b0ea8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.9.1/rvl-v0.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b954a308b75e415234399807695572f1be2e9ec33ea622efdf820c295fe8ab82"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.9.1/rvl-v0.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "14603d9d91b1fbcd6d8daa40f27c95c064a79420916b0bc59181f8940b8e2a0d"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
