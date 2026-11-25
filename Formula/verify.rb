# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.6.0/verify-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "6452d7d7e986c2cfe00d70d437e039e9fe66f8c002800e648e50dafa40b29c54"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.6.0/verify-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "1beacb417cd5387dc5ccdb36014daea4090ce71d6d3d0bf113d0dea366feff85"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.6.0/verify-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8cf6e88b15af8a43452a6416bb16a539a3d18d943181cfc045b1d201b33c5d4b"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.6.0/verify-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "18c1ad738184ca5dd7acc3a102f0e1a504fb911980042bf2f5ecd19e2a9283a6"
    end
  end

  def install
    bin.install "verify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/verify --version")
    assert_match "verify doctor health: healthy", shell_output("#{bin}/verify doctor health")
  end
end
