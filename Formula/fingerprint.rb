class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.13.0/fingerprint-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "dd2045db4388d3a258298f021c9f36360a0c46ccc04d23c46a3a0fc6d54dc176"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.13.0/fingerprint-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "bc9336b298756327c0c03bc51044bb005793696d017b0ca98a6881a9dbe6efc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.13.0/fingerprint-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "424ff1e2e164e3abb24e6327099ecf77cec500619d4bc7ed93fcef5001dabdfa"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.13.0/fingerprint-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa3be5543b00b542fbc75e3193fbf1aed3f2a56ae25b3f6a9e0594c51e5f6e9d"
    end
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
