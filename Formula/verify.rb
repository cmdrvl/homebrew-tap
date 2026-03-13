# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  version "0.1.4"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.1.4/verify-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "c465def5541a08cd93650aa170a3a9e27bafddb3a3439b8b7133cce4dadcf218"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.1.4/verify-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "1322326361a9c21a9fba339ab895e1db7f10c71d3b299fc1de56560989d32978"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.1.4/verify-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0ff3d0ff7fadcef9aac166d3974e242417dbd6ee84c46a3e5f872e2e70decf11"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.1.4/verify-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8e8b0ff01328337f1f14044254693c7678761bb6b3bc16639a8a1844fda827c"
    end
  end

  def install
    bin.install "verify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/verify --version")
  end
end
