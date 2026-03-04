class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  version "0.4.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.4.0/fingerprint-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "1332464a0962ae0482ac59da997d11d963d26c0b2ee082ca9cc85d7d5a5a7a4f"
    else
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.4.0/fingerprint-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "96190ef9afa9e8b12e2e501d9d5fa51a2498b4a089f5392f98eda34841c58d9f"
    end
  end

  on_linux do
    url "https://github.com/cmdrvl/fingerprint/releases/download/v0.4.0/fingerprint-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6b2cc8d919a6ab1af265db1e70672cc856d2fb6e3dde9165432357fc0d62a853"
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
