# typed: false
# frozen_string_literal: true

class Vacuum < Formula
  desc "Inventory artifacts into deterministic JSONL manifests"
  homepage "https://github.com/cmdrvl/vacuum"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.5.0/vacuum-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "7d6079c731fbfa661f7f428efd64cd84f85b7a8e6fb9ad726b06d9f500246e36"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.5.0/vacuum-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "0123466bac87e9a3a62076b5eaf446008387b9b45e1620ac36faa5c6d338cf72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.5.0/vacuum-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ee4a4949060cf06748d1f6661e34d818437c6ad48d3770861caad4c546ef5df9"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.5.0/vacuum-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "339991efbbe37ff29844a7e9767d740af8e59ecd7b17dd992874e16b249cd509"
    end
  end

  def install
    bin.install "vacuum"
    bin.install "s3-to-vacuum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacuum --version")
  end
end
