# typed: false
# frozen_string_literal: true

class Shape < Formula
  desc "Structural comparability gate for CSV datasets"
  homepage "https://github.com/cmdrvl/shape"
  version "0.6.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.6.1/shape-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "0e8ca8197be2b491ab993f40cf117b88b5490cc0b52921ba898228c6bc03841b"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.6.1/shape-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "9e95ffb253014203e19ae8559d6034430859efa842d9ead264cba1a2199c61a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.6.1/shape-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e50f4424e783646becdab4f065a3b4d99d0e92b2d5b99dd29ae6aeafaa935ac4"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.6.1/shape-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "823c467de2943da021824ac863560b07338d2fc4bc945887947b753a8462cce4"
    end
  end

  def install
    bin.install "shape"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shape --version")
  end
end
