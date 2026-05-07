# typed: false
# frozen_string_literal: true

class Pack < Formula
  desc "Seal artifacts into immutable, self-verifiable evidence packs"
  homepage "https://github.com/cmdrvl/pack"
  version "0.3.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.3.0/pack-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "bd140a153e5aaf5b896e7ef695b5aec74d4027004a8e649fa0f56b9558b99fc4"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.3.0/pack-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "7f47976ea3b25bc1c3f4060b40786a260863ca01ac69483cd2622714a139d967"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.3.0/pack-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8fc8198d756727c092108a739810f0a399ffb69e208fbaddef7bf37950d52de1"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.3.0/pack-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "adf49b592fec55ea5aba7a08a73b824e8fecd4435bac35ad82b73957e67195a7"
    end
  end

  def install
    bin.install "pack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pack --version")
  end
end
