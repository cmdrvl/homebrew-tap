# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Create, validate, and freeze column-scoping profiles"
  homepage "https://github.com/cmdrvl/profile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.7.0/profile-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "2550e1f7740d7b35283b04b55d26a4df57e5e06171929f75c7362fac7bc0e2aa"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.7.0/profile-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "12712883be7939fe66c7438e4a2ae5702d73a44ddc330392319f7b330edc4b00"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.7.0/profile-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aed574fe33dd1a2ca36f0b054dce4c82d5ec172df6d70f22a728e5f073f1f3f4"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.7.0/profile-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc6d496fa84d4c8e1231e989437f4a3acc1ea16a030130981e3dfc8628d32c32"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
