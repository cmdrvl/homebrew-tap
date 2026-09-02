# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Create, validate, and freeze column-scoping profiles"
  homepage "https://github.com/cmdrvl/profile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.9.0/profile-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "85340a9b015cd06d6e9e6c7f3757ab0f85345e3c296dd84c217df18caddd29de"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.9.0/profile-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "0bdfcb7876899237f77df52fccfd921f71cfd950d2a863d61c05d8ecfb5077c5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.9.0/profile-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "06e0dda18ffbe60c0f2f45781140ff3fd6cce4a0141f733c7060aa03932ed781"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.9.0/profile-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99c935654aba1c14485d1360e2b36b57d8ed6a933f01f51fdcf3934d2ff59466"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
