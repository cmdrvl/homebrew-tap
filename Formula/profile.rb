# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Create, validate, and freeze column-scoping profiles"
  homepage "https://github.com/cmdrvl/profile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.6.1/profile-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "fde26728499350870656f5ca901ff3db460501663dbad0aa32d5aae767b71f68"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.6.1/profile-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "f27934cf675e7ee888756ea868d210df4315b786df4156a7a4e8ba0a95cb2329"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.6.1/profile-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bda032bade7b9cec20ecbda7abdfc7d4da050e3f096abc55934df7e40a554373"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.6.1/profile-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "531a1152d935d348b7cc187d902190de4a08163dca2b48323b3ad60ba81689a2"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
