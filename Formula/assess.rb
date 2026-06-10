# typed: false
# frozen_string_literal: true

class Assess < Formula
  desc "Deterministic decision classification over a spine evidence bundle"
  homepage "https://github.com/cmdrvl/assess"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/assess/releases/download/v0.3.0/assess-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "af72584f99a2ba718358b788d89ca2fcd72875d18bc6a543dfaeb267bf1b73e4"
    end
    on_intel do
      url "https://github.com/cmdrvl/assess/releases/download/v0.3.0/assess-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "9f5d6d4e427e708e08541e8dac29458264251fa5abca9d1f81042a0a98f1f42c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/assess/releases/download/v0.3.0/assess-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f75bf05bf46d6647b1d8ba59f905e6361c87e0a91ef68d84d63564850021c1b2"
    end
    on_intel do
      url "https://github.com/cmdrvl/assess/releases/download/v0.3.0/assess-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7a899681cad32bcf6619dd6d02612a68215c8fb6dd5ca660682662db912a496"
    end
  end

  def install
    bin.install "assess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/assess --version")
  end
end
