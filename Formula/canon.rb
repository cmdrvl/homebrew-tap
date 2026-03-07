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
      sha256 "6f20c5c78f43f34f0fb55d419e8f386e24c11e09995bdd1fbf06b9d31afd37bb"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.1/canon-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "6850a0f193d4e590409b8216340890dc3e3e194de56fa46d040adc81f7483ff1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.1/canon-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1c1753c73050ba46e90e498ac5bcbb4284e7efb721435a4bb9022281c767fd78"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.1/canon-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "563d4d51fcb146cde997d43710c66370a36623d5a42a462fdc1d0951726925a4"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
