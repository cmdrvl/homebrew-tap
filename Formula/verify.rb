# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.1.3/verify-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "6e5568a0337b81fa48bd53c3f18c498edd456d4ad5ada01a6ee568d21d7eda0c"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.1.3/verify-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "2c1181e20352da72997b1ffcef529d601d49589e8b40e85752799b2772e7121a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.1.3/verify-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "627c44dbe170de6dbb9cce8191e93af3f33592242d60dd105bed83a8cfaaad32"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.1.3/verify-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c4ba06485ff0326949559257b6bbe8fb1eb8ef39dec3fe80ee55ca042f82786"
    end
  end

  def install
    bin.install "verify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/verify --version")
  end
end
