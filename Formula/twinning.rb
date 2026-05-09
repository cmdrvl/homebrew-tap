# typed: false
# frozen_string_literal: true

class Twinning < Formula
  desc "Protocol-faithful interface twins for fast extractor iteration"
  homepage "https://github.com/cmdrvl/twinning"
  version "0.2.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.2.0/twinning-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "23f9b23561c9254e154696140e62a25d437484d579d5c6f23f0066aaee3ae626"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.2.0/twinning-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "4d118182ceb2625bf0087e8c3db2f36f78c34ee1dcbed87b61652c6c834f2982"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.2.0/twinning-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ea8bb372621e4cefca80bde1c1dd7959df6f4f89136e7536800844c63c3844a"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.2.0/twinning-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3cfe7148e8683fadfb6894091aa22db335558b8d0828ab6f11058a3e069a874"
    end
  end

  def install
    bin.install "twinning"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twinning --version")
  end
end
