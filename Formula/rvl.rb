# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.7.1/rvl-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "6cf99fd71568c58210616dd21f948dedb429a22019d4cc6d652f70f8f0559567"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.7.1/rvl-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "c6f4d617989b401d1194cea4708c2c18e09dcf0a2330e957b783face67b53e98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.7.1/rvl-v0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3978c840428fa9e0f029dd84ed29385f15b8c1ff05a834a4f4e81aa88267566d"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.7.1/rvl-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c10e19a457c13068033da408fcb9f118e6565cbfd2cc185e72241e0ac940cead"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
