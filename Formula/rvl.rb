# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  version "0.5.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.5.1/rvl-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "220f7ab751f3a2cf1bd2611c7a2248574cc28f5e0359f94f7f723193eaffecb6"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.5.1/rvl-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "c07c74835cf1b9224c62d5ccfa1e17ffbcc4d789611deff989c73732a047e072"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.5.1/rvl-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "820c61b7ca647622b975a9671369c51e233a17ac55278b14f2b546a9936f0844"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.5.1/rvl-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77913ab77d9d522b2b78269a700ce381624a4b10885b515f161c6a8b7558d3ee"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
