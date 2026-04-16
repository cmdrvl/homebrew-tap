# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Creates, validates, and freezes column-scoping profiles for report tools"
  homepage "https://github.com/cmdrvl/profile"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.3.0/profile-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "6c47d332060e83e5ba1328a9e2b45f5507c5513b8861dfc19960ec7277a92d62"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.3.0/profile-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "32c63fae64a76a7cb31b6b30dc466fc54f9860981f434a3627aa593364e4e7d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.3.0/profile-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b2e45046b00e065ec935304e222d9c2772427ee4bcf97bd0944b56de9c47812"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.3.0/profile-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "309395d9cc4da0a7a2479b323d4c7951a1b312c460bb4490fe5267b7d38b3f7d"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
