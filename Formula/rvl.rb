# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.10.0/rvl-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "23e7713762a849cd6daa973f6ab837c5ff4a0f9a57bdf339f9aad1021673c16f"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.10.0/rvl-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "e139b30409f494f5f86ff77f6f0121f5bb8d66bb6c038835b3ba5ea9c2afe44c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.10.0/rvl-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4cb82a23be82191741d6543be6cc963ce1e83ae969c3c2a44c9ffc5bf2208d0"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.10.0/rvl-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "20ff5537ad18a5d722449d513cda3ed313186100bba104109b44381ba2b53fa5"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
