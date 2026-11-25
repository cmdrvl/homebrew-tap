# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Create, validate, and freeze column-scoping profiles"
  homepage "https://github.com/cmdrvl/profile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.11.0/profile-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "02b5cee71ec7428f68e122dc63a3587cd4119af9bb2bdfdf0131deb3077ff2ae"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.11.0/profile-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "30e1c49d8ece5e9e5a0957ea8084b2814a47d3d88a9dbcc4c17daf06aa1654c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.11.0/profile-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d04b7e335f27b7455a69d62fdf6a1e367efa0e936616e76b97f2aaaaafa6e86"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.11.0/profile-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ccf8f38fb8e27309eb810ce6db29e59fffb7af1f5ee2ce99aa5d05982d25e2c1"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
