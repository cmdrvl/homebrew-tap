class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  version "0.6.0"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.6.0/fingerprint-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "9756310c3df9136c6a83ec81f356d284008bfedde6a20d7d3a3ed9c5d3d725b7"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.6.0/fingerprint-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "11718bab607a10caba9a24edafd5403043c3bf8e98ac90f4453ec76fb264c697"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.6.0/fingerprint-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e963952de8910c0d7e39087ae2b415a623b2b02f2b4241c09b0ec2952a05d83"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.6.0/fingerprint-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "210804c04c3188ba970545d40eaf87c9b1ac49e2b86c2479678ebc0d31a13f50"
    end
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
