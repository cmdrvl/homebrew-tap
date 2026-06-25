# typed: false
# frozen_string_literal: true

class Twinning < Formula
  desc "Protocol-faithful interface twins for fast extractor iteration"
  homepage "https://github.com/cmdrvl/twinning"
  version "0.6.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.6.0/twinning-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "10cf6e180b24256e94187b85c1b2d014e3a173c8f366a1e5c1f3b7e75b0ecece"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.6.0/twinning-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "24f87ab79a193559b0c0fd17f1bb5d9ce523c13981deb6f991b22eb3bd35e46e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.6.0/twinning-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bf19e1c7dde372b311645f61b2b26a1bf20b52b427975595a38b93024c9d4f0a"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.6.0/twinning-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8521865d88f455a4d889a0cc4f973fe1098ee95dac58fec3fe37090068844c8"
    end
  end

  def install
    bin.install "twinning"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twinning --version")
  end
end
