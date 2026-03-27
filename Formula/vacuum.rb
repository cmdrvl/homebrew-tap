# typed: false
# frozen_string_literal: true

class Vacuum < Formula
  desc "Inventory artifacts into deterministic JSONL manifests"
  homepage "https://github.com/cmdrvl/vacuum"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.2.1/vacuum-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "1f0fb6520298750b5beeeec4136c9b81e7615193259a66f98488f72be43ce787"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.2.1/vacuum-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "e7afae89940b567dcdbda550e9f918fbcfc30944bb8937eec703376ea6996141"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.2.1/vacuum-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "da370a9970a90cee5c51506571e85e30c5277509ccd6b07f66e573b32f8dbdc1"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.2.1/vacuum-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "264dbd88597d16a316bd2a9de3f0a2d182820133325eb32f8cfcbff3342e10f9"
    end
  end

  def install
    bin.install "vacuum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacuum --version")
  end
end
