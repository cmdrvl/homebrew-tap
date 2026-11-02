# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.14.0/canon-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "80ae8abf094ff2574ed293bc58faecb188b82d06bb374173e8d64296e6854992"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.14.0/canon-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "5ac128b7d31cf71727208e69dc87d5a5c8d625946a153fef5591af091378afcf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.14.0/canon-v0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "076a212a3d3953a63ee8e3e42f0431a478e6984fb7d13f414437b919ea7dbe45"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.14.0/canon-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d853bcf3d362d8900058c8c41ffaf27724b92022a04027745c6067d218dc7e2f"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
