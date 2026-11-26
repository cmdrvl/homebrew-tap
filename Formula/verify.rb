# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.1/verify-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "7e7cdda8e1c76b238cd9947120e65f9fb2c2042a621b871f9b06c558885d63e7"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.1/verify-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "e1b4d3d9447c9627677d1e1d47086104448f65a52efcf55afb934e9a90b228ce"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.1/verify-v0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0098c24ea43f08621f0d251d7bc09a5c8e66791f97cda96a31bc7f4d20362082"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.1/verify-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "883a7487aa18ce008c0de19ab25a0088d9e3f7ecf3908885fa21ba6ee1634b87"
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
