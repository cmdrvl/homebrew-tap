# typed: false
# frozen_string_literal: true

class Assess < Formula
  desc "Deterministic decision classification over a spine evidence bundle"
  homepage "https://github.com/cmdrvl/assess"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/assess/releases/download/v0.4.0/assess-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "2b6af6029363729c647c696eb884dcd40956e3f3f4cfa084247e184e7998a528"
    end
    on_intel do
      url "https://github.com/cmdrvl/assess/releases/download/v0.4.0/assess-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "bb4db7c9b4ad41abde0661c2f556dccb49d8ed5441454c9f938bcba65830f088"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/assess/releases/download/v0.4.0/assess-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd2bd2b79c522d986d26ef32b2ed34817aa53ea4fb89bcb6e21a0b8e55c289c1"
    end
    on_intel do
      url "https://github.com/cmdrvl/assess/releases/download/v0.4.0/assess-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da8e90df55efa7dbf4ec7f6f9cfaedc8c975ba2cc081da94e1be54113bde503c"
    end
  end

  def install
    bin.install "assess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/assess --version")
  end
end
