# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Creates, validates, and freezes column-scoping profiles for report tools"
  homepage "https://github.com/cmdrvl/profile"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.2.0/profile-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "0df400957e86bff98ac737b9037c946f4eb32174dec9b0d183b8a46f69aaefac"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.2.0/profile-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "0915bc9c96509274254e426ba775bf4b6860fb4dd9e928f0f4728dfb6531c397"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.2.0/profile-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "898d6d80115fca0e99c83bf4f2c6ad63384a2758a28c604f69fcd596dd3bcfc6"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.2.0/profile-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4bcf4ba1e964c5e3ac1687fd1e621f6586579a7a1095cde95ebe02b7e11e4de"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
