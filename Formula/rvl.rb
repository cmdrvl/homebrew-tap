# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.9.2/rvl-v0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "2af8a46db355c56e7931474c56307f425be749bd23d5e37905b90f75fd5b521c"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.9.2/rvl-v0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "0bd63124e4191d821adbf2acb424875d077118779de28bbebb56ab0ed7e1f2c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.9.2/rvl-v0.9.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e50b98acacdcef5a4ce31b504a2acc078d4b4fa3e4e40627bab6e0b49222403c"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.9.2/rvl-v0.9.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d87efa89471d5a9eabc19fc3ed0c547ab6008b8b6365b391be45b0c731c9c38"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
