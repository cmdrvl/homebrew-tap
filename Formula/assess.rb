# typed: false
# frozen_string_literal: true

class Assess < Formula
  desc "Deterministic decision classification over a spine evidence bundle"
  homepage "https://github.com/cmdrvl/assess"
  version "0.2.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/assess/releases/download/v0.2.0/assess-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "8cda117d1176e1cdfc5adee50c070f49b9db9df2caf7f026337f55212b5d8f8b"
    end
    on_intel do
      url "https://github.com/cmdrvl/assess/releases/download/v0.2.0/assess-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "5bc6b7957c1c596251aaf8d308f43f47e0346709bdad42682cb253788e54b9bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/assess/releases/download/v0.2.0/assess-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "410699eef392db62be8a05b4799913fc0c47d9e2f007460d0010926285b40dac"
    end
    on_intel do
      url "https://github.com/cmdrvl/assess/releases/download/v0.2.0/assess-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd5b1c13ad1c9b9aa4e6e7bfd4a5650ac39815a58d656f556b6893450f5a264b"
    end
  end

  def install
    bin.install "assess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/assess --version")
  end
end
