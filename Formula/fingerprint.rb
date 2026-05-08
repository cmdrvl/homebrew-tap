class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  version "0.7.0"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.7.0/fingerprint-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "d9b463668a95ee3705e09cf35df676c3561cc7ef28d44b02fbdf5435b46c60e1"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.7.0/fingerprint-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "9973153caa98c554f743476e38db8a3c03625a48e1018eac042aa1d9d6983f2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.7.0/fingerprint-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e2580527b051b25c44bffa8b5a481217b326cf60acb93194ff99700930b97c78"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.7.0/fingerprint-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "090927c2be8b11251fb8cae064f5c8526f382cd9acf86db45a17d2feec85b138"
    end
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
