# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.2.2"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.2/canon-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "2a0ee793141d57853b42fab4efefeae8674a65f3116d91d649b4ba6c16b5051e"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.2/canon-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "dbc0861a96641d80a96ae0e3f039b0cb8e6df05cd12579f9f59d257f9e2d0acd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.2/canon-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5fed19d39f911466c5b30d9753d810e7a2f77f005f1730c5cb5f4afa7c376025"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.2/canon-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45eed855bcc89231d4edafae445ddb8ac59caac902e550a10766587d5446461d"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
