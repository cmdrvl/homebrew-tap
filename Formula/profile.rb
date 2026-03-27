# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Creates, validates, and freezes column-scoping profiles for report tools"
  homepage "https://github.com/cmdrvl/profile"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.2.1/profile-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "f88380ca744330beb437a848c20df17baccc4f388ed9d6375b94ba938996a274"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.2.1/profile-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "5c41b0a9f72fec1b099216e043c6e1566094d01f42ace07715c6bf797335611b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.2.1/profile-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0cf06d72449e7def7621cacbb0c22db7ca082c2cd38294c5a67a79931406c258"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.2.1/profile-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21464b0cf9a8fb87eba0ed2f61cdee37d395f2d4f1975d0c33735679b45ba0b5"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
