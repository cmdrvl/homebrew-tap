# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  version "0.2.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.2.0/rvl-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "4a1f60fa845d921dfaaf33af665fbc2b242050d0caf45ff91d466c627be323e0"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.2.0/rvl-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "11798df47bd331196758feb46bdebfce95111284c300db98d4b75475910fe404"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.2.0/rvl-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3eab4dead8410106d1fdde877bd187446ef9823153befbdac67f8f7613cbe1b7"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.2.0/rvl-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a303502e108a653ea5e2d59847be186a984cf40393ef90ebc4e048b474fd3c7c"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
