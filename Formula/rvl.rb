# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  version "0.1.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.1.1/rvl-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "857f28475fd7bb6057b0fe7ccea801a8db4ca869db0c169b9dffa470f97db370"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.1.1/rvl-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "05aa9d5f748a857c947f9fc3e919bfa4483d704f366e252d400c8a4ebdf55f47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.1.1/rvl-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edfa2d20a6aedb652b1ed41faefab273fe5b341878019a675a62053187666c8e"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.1.1/rvl-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf681295456e6ca3a027f6ca7f7d17ae888ea8f1d8b55b6188eaf21c7ec411e1"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
