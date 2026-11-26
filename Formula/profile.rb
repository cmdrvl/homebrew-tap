# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Create, validate, and freeze column-scoping profiles"
  homepage "https://github.com/cmdrvl/profile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.12.0/profile-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "d0a5ba2ffa9460795df9ae760b6c2636c75d18a5299887f87c5098e5494884a0"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.12.0/profile-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "87ca2cef14848afd2ba2547e230d0f90b99e5fb9d6cd038263afdfdb09cc8b88"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.12.0/profile-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d59c2edd2176eb090027408470a54af937c73505546c837e65e49e2ff4e02f3"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.12.0/profile-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae3e95cc08a64f919567b8f8607f32358857434dd0632e264b9c82d728081752"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
