# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Create, validate, and freeze column-scoping profiles"
  homepage "https://github.com/cmdrvl/profile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.4.0/profile-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "87c06c11f09cb23111ca8e777e403732a6a09ed4ef550d8eca3ae32cc778df82"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.4.0/profile-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "75d23fe9bfa54b76f6f634c68a8236ff74b1ae071102ef304af0f9fed6a709f4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.4.0/profile-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "839e118232196872a257b52f31a7c2d554fcaa4caf36be03407bdf05a85bba0d"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.4.0/profile-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3477bab422cda2aa2f654cd4654707deae34011002c0f103bc6444c0e0d529de"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
