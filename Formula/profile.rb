# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Create, validate, and freeze column-scoping profiles"
  homepage "https://github.com/cmdrvl/profile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.12.1/profile-v0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "b776c813fd5bb4906ac574e6cfc057dc8bab7b895b35625380ff771ecdc5cc10"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.12.1/profile-v0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "0a028fc2b780d9f6e77cf779035cad26e8383e862253928c47f74ff0cbf858bd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.12.1/profile-v0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5ef2987287addbfec0986e0d91bd21cb54cd39616d3866c4eb46531c314b3125"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.12.1/profile-v0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "755c0b10a7b6b0afc2236630bab72a06a4acef24f40c4d4629cb3479c7113daa"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
