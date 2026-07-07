# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.10.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.10.0/canon-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "3584e4df8db132697ba0482d3effd1f248e9a0374ce4a4cad3fb05b5b1180958"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.10.0/canon-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "031c953eac6c893a54cc30858c5dc80c9996c2822c0933a5134c6f69bff3cbd6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.10.0/canon-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cda2d865745fd8b22f83974a9b408619b19301ccc83b5c46fabac6fe46937184"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.10.0/canon-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "83ae87316ce286dd0bd75704a463ce4893eeecd207b5cd95905427a3a15b02cc"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
