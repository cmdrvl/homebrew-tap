# typed: false
# frozen_string_literal: true

class Decoding < Formula
  desc "Deterministic convergence engine for legacy-system archaeology"
  homepage "https://github.com/cmdrvl/decoding"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.4.0/decoding-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "85e200db01e066f009eaef79b7989eb995b81dff5ddb12686217408a37398000"
    end
    on_intel do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.4.0/decoding-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "32f802cab207f527685e9458eb02478cbc5e946b8235b7deda28cc1bdbab98b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.4.0/decoding-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e971de9e9d301de7b165e426119e769fa055b14a449f49ec434deac0bc18dd78"
    end
    on_intel do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.4.0/decoding-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33066f6f409caf6340f5e2d7c6d2ba2a71d68cd547d925f903d4997649416a30"
    end
  end

  def install
    bin.install "decoding"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decoding --version")
  end
end
