# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Creates, validates, and freezes column-scoping profiles for report tools"
  homepage "https://github.com/cmdrvl/profile"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.1.0/profile-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "59197b651986ffff553f8c80d18b691475a7198e9adfc77d7d9b511703bd15f9"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.1.0/profile-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "74ecd7bab5ddf8e7b1fcdf4dca13a7bb9f993238809095292eb55f775c7ac052"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.1.0/profile-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78bae9a0f0924d48aa8b4f8b01bca3d202c5a06e7653f768ea0f4033a67d028c"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.1.0/profile-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56fba0700ab15edd62591f2892a3bb26040f4c58111f4ac196a03e32691bf526"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
