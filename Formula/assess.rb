# typed: false
# frozen_string_literal: true

class Assess < Formula
  desc "Deterministic decision classification over a spine evidence bundle"
  homepage "https://github.com/cmdrvl/assess"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/assess/releases/download/v0.1.0/assess-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "036b649fa319212e00b667377a11b221ba609353b6f3530a7c3b97a98e1da4de"
    end
    on_intel do
      url "https://github.com/cmdrvl/assess/releases/download/v0.1.0/assess-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "b935789ba9a4a1351ad6258a5929f2ee79f7ce7c7db44259ee48b240e506b568"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/assess/releases/download/v0.1.0/assess-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "22f1afc6fe7b457da4293afd40c40ea211b6c5eb2b3022b21aba5655c06a3f5d"
    end
    on_intel do
      url "https://github.com/cmdrvl/assess/releases/download/v0.1.0/assess-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fcfd1d787dc645d0f65a861bfe0274efd5b523651b5d7e8141ec9ca83d0d7024"
    end
  end

  def install
    bin.install "assess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/assess --version")
  end
end
