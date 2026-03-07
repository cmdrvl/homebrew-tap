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
      sha256 "dfb472e3b12169f32f22f6a1fc469ae285bd607f8fbf4ec44d3d3fd0e02711f2"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.1/canon-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "8f9001877187b3bdac77df1bbbb4aecf5b8dfbded4b2cd2dc183eec095e4df96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.1/canon-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e7a684dd6471fee958dd691f5cc4b4fd5b1f728994213e9a529535046506a13c"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.2.1/canon-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c93b6b9175a0ec674306c4c087d9065b0cf795f4ca4e0e5adc92f78fb504ebf6"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
