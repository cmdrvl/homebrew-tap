# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "0fd02e69cad6c049ba5bd82f474ec6395e617edfe23919b1eb698e423dae0121"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "44be1afe6a3f785d117af56d5d75eb62cc90a1f737e91677c3eb7194e9967d9b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "72131a4534a66ef65b5a22b9e2ca09531cf771a65e0d652c872c68ce070efe4e"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.12.1/canon-v0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4725a179db8690f501b2e3ae417619c052b3c52cf532b1e014f23828daa93fdd"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
