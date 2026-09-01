# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Create, validate, and freeze column-scoping profiles"
  homepage "https://github.com/cmdrvl/profile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.8.0/profile-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "4aa87bdc8468e606bccf840610ec2b3cbe90a12d604274f783a247b6672b9431"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.8.0/profile-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "31622529964b8e02cd910a91263860460d363de88342ed115deb47b5f46127fa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.8.0/profile-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "494f5db14a96d3151e7fc068a93f54f40f8597f143baf3062b99c8ed130f9cd7"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.8.0/profile-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32815ad31acdf89ea4e44ac4f6986314e6708b3f0c6d71e9358a29732c854bec"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
