# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.7.0/rvl-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "c1c36c656220afc5e414dc4b6b6004ce9cc74e12453b87c633f2644b89d91370"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.7.0/rvl-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "42cbf7d508791cdb51e2564acbf783027cb88963fe5126cfa2770efcf9caf9e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.7.0/rvl-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f4ac94cdd6f690e634ee1e3eae26995e8b7b484eb9a8344c54b5a712e6995b5"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.7.0/rvl-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5a0a0ab253fcebf9a139f288ad74a2836587504beb984348615cb4563fa4047"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
