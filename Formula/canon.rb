# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.2.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.1/canon-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "dd0971d8ff22544486b69f91621d4f444488ebfeedf1735b44c9f926c35647ce"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.1/canon-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "f9dd52a0fee012bc101fcd911f29ffc28366ed959bd87328e4a498999acb03a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.1/canon-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "084bc75305fd6d2679f1301c92fb4f930e54085b2a32c7397638f6a57651022e"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.1/canon-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "904fb3cb4ff0ca35b6d70f6612a84fe3c7db21092d231090e5c9fce5f103c6c4"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
