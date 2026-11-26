# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.0/verify-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "aa563e255dc6e55f07550ebbbb891a20e61efd3dc40cbf16ce2bfa9fe5fd084a"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.0/verify-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "14b59bb91f75112d432a1d5a068f650e237978de9960e8cb723a582a04f869fa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.0/verify-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b74a3e1ab459e72d2fd21cf0f131524f7da53b68f026d4590ede6b66259d834b"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.0/verify-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e5d65bbc0575f59f49f44ded6581fb0dd6605002381e20db6b0a4a6c04f9a0c5"
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
