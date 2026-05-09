# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Create, validate, and freeze column-scoping profiles"
  homepage "https://github.com/cmdrvl/profile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.5.0/profile-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "39611dd7479625cbcda43c3d0e562e0d5047a3df0d988ec404aade58bdb2bfdf"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.5.0/profile-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "fd3396d4ced96e67d6efaf3590db977bfaf5c395715d17fb634a915b1fd47753"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.5.0/profile-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dac7dcd4d6858b84457c4e5f093136d54b49e2047ed63f95d8a8b74306f69e2f"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.5.0/profile-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7472230863724d4fbc3e6482b4abdfec93d4c548f20a42b8bc1654e3460f9c59"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
