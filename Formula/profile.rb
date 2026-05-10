# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Create, validate, and freeze column-scoping profiles"
  homepage "https://github.com/cmdrvl/profile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.6.0/profile-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "fe063cbaf6db6bc5cda165c87f68e7da9207e8495db1093245a1fbf3ada12b2e"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.6.0/profile-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "f4ea1e848542fd85093c4408735398c4bb932405b45f1ceaca0c473b520ed89e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.6.0/profile-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bea390f864b4548220aaa3b71abbd2a05a0f928d06798618ea28f423eb977e69"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.6.0/profile-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f7dc103cfcd7653396ca4d17af76245c2d39095646d5be4da2bc8c00d4e91d2"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
