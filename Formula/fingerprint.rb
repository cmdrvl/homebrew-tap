class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.12.0/fingerprint-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "a107bf8488886beff022acc7609836990e43b0d4d20f19f82f588e749d595c7f"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.12.0/fingerprint-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "02c28b3a2ce5ddb6ec9f08b7b11b64292a8c97c3176afc633450d0ef3cb3a390"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.12.0/fingerprint-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f8a6cb90f840c8432b572716cfa281e7927eed5d1ae044870cb7d3adc0d155b"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.12.0/fingerprint-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e9f74865b9f412312bf6a2fe99dfa8c3bfa03e93cc73e8f19974c50a33c9ed6"
    end
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
