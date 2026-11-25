# typed: false
# frozen_string_literal: true

class Decoding < Formula
  desc "Deterministic convergence engine for legacy-system archaeology"
  homepage "https://github.com/cmdrvl/decoding"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.5.0/decoding-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "6ed17a2f0ecd42eb79a59ee1885d9db5f7bc89cd50fff06f63dde0011e1d7580"
    end
    on_intel do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.5.0/decoding-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "d31406eac16cf5a2f3fd4d1059a29021f15af0e5196cb47e0304ab2e481f254e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.5.0/decoding-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f67655788537272b3edced3746a1fd50441944122cf89bdd50bdcbdb8dac6fad"
    end
    on_intel do
      url "https://github.com/cmdrvl/decoding/releases/download/v0.5.0/decoding-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66519480ede49b9b49323eff46e0b0a77d55fff07fbc522473cf5d6b0b476b1a"
    end
  end

  def install
    bin.install "decoding"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decoding --version")
  end
end
