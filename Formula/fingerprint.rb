class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.11.0/fingerprint-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "33bb6204052a0dee2075c384642f7c379ba6552c3523bf9ebc106f9f34fb64ea"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.11.0/fingerprint-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "360d69ddc5ed09e421ad45f8b8f75aaf0988a6423fedbd7a5f19fb5606d62174"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.11.0/fingerprint-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d7d77faf35fb49a5d265b3fa992ccf6f6ba93173cd89d6dfb6b2543193bf907a"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.11.0/fingerprint-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f25e0c646571d03fbe7c1b26ec36f2fc646bc5342d26a0139e949dd3836b256c"
    end
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
