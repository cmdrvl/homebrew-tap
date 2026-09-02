# typed: false
# frozen_string_literal: true

class Shape < Formula
  desc "Structural comparability gate for CSV datasets"
  homepage "https://github.com/cmdrvl/shape"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.9.0/shape-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "68590ba153bf14a3c5dc99a6bea8dbecbf153bb043ed0b055d80b5af39d77794"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.9.0/shape-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "7d6f9c5c083c2077da866ae5bff7e4e5a9a18587a05e86374215f1a34d839c2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.9.0/shape-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b0604999b2426225de7ff006503288caa452867302c265a1318ad477820548c7"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.9.0/shape-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b3c0bcbbc2db3590a6362762c430142881bd390fc8380726cf542f736695261"
    end
  end

  def install
    bin.install "shape"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shape --version")
  end
end
