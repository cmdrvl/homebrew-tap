# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.2/verify-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "4f3f1b14e3e621f0a4629da6ac054b250fe093c193db4858bc5a1efcdd6ab339"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.2/verify-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "2288fad174d0b38d1b8d417c2d4d519b9efb314ad812dcb39d5f5fdb1f454227"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.2/verify-v0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94c3d3e069b9f1ebc9895fe39a3337347d3e93ed73192b31447c78962f8290ee"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.2/verify-v0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbf1a9fccc80d9be0d81abe044dfb218047ea4ea77f5e329fe556bb13265e727"
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
