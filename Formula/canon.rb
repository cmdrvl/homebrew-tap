# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.6.2"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.6.2/canon-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "2aa1d3397b715b82e0b9466c12499fb86c0201e0e761226e41eaf63708936758"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.6.2/canon-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "e2e8a5da17bee6307f31f4c391e5ea7cc4cd0ed391bfa2bb8091d4620fb4b4e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.6.2/canon-v0.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "231453abc5a4d31174b960623359c4477b3442d56a643a0b65fc6a3e4fb833ac"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.6.2/canon-v0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "872264b4c02372f29942141bf9c8ba2957028ec24b6848cada09fd24becdd4a7"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
