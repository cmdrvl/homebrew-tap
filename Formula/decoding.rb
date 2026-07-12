# typed: false
# frozen_string_literal: true

class Decoding < Formula
  desc "Deterministic convergence engine for legacy-system archaeology"
  homepage "https://github.com/cmdrvl/decoding"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.3.0/decoding-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "8bd49d412d320aa340b9a9306d21c2120fe49a34de7cda6e864ca4a5f6009282"
    end
    on_intel do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.3.0/decoding-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "93547020862008665a31962fa50c6f2931dfb7a4d748ec1df253b1158bbbba3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.3.0/decoding-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2be6833f1a539a0d35e9b84d5fd11238034f3147850d907d20483fab0e9cb8b9"
    end
    on_intel do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.3.0/decoding-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cdf57420bede8b270e3b6c417fdea8bacefc3fd80698e94b3cf75c7c87060d44"
    end
  end

  def install
    bin.install "decoding"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decoding --version")
  end
end
