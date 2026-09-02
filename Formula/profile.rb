# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Create, validate, and freeze column-scoping profiles"
  homepage "https://github.com/cmdrvl/profile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.10.0/profile-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "2028da0d1ae0a1edf038839dea40738a94d7422ef9e83bbe1cefcbc825ffce97"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.10.0/profile-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "94dceb7fe778e0bf59179e8916ea0d34df302859a6187b010e58b53b9131b980"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.10.0/profile-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed0992bf8bab4d23233553d4908f2b4056bf2ff780aeb5bc902c4ccccb41f2f2"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.10.0/profile-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a318412592a2d13ce80e264c00196410a3b5020e11f0dde69fcdb73924076d5c"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
