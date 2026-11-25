# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Create, validate, and freeze column-scoping profiles"
  homepage "https://github.com/cmdrvl/profile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.11.0/profile-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "af7b68f9ed15a5272ca5129216427de85e431ea29c4108ea19e6c2d7883a094a"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.11.0/profile-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "e99e000dbbbf9736928faada72f3ac6b4c64bb3d8072b6c11d99dc21220a0f78"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.11.0/profile-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d96ea1b677672f2f66867e1f7a2bcead45eb456346ba501429b2be812d02324"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.11.0/profile-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3b6605f7c8969f0dbe90baad0b5279adfe931cb3a1e0fa384bee07b98b06436"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
