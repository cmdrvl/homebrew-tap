# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.5.0/verify-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "1fe89257ec6e13689aa9418cb4d94debac80049274fb1d1fbfe74b2c876d8863"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.5.0/verify-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "e4e1094a12b22a8769827cda7a577fd42da3ac731f395c98612f59f91642ef2a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.5.0/verify-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0647179b8f147c553cfe993c44923515d23dfac284cbcee0fbfb6cacf6df0665"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.5.0/verify-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e066c894e93ebb58ee326ed3f6ace55cf86fa2df8a7d7665c0b3e5e6f301612"
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
