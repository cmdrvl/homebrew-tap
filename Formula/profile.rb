# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Create, validate, and freeze column-scoping profiles"
  homepage "https://github.com/cmdrvl/profile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.13.0/profile-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "b3b516de66832f683e785122681a4f45799b51c3db66fe6cafa5f1153324a3c4"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.13.0/profile-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "a67f8cb78ba757ed9327781b9c6cb862480ceede19ed3f4fcd65ea51399e5aeb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.13.0/profile-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "76c25579de6f823aee634955f91a60e9bc3cc7a93c49ff173fd0b18d52a34a77"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.13.0/profile-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6058a5e62321d98590b9e6a66039b3f081af1b813bc5b2d08cfd04eb5fd2832b"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
