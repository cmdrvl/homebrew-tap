class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  version "0.7.1"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.7.1/fingerprint-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "c4f69062fb1bc6bb9cecddaaed9b54a50241178d2f9f7de4ed9cbf3cc80a8086"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.7.1/fingerprint-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "290c58bb2314da63f4e5b58969c0ce13a9021c083a5ac98a57e8db7909b8e8c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.7.1/fingerprint-v0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02a3efae2a8420bd692be9b1b06eed937157a2461ddf34c66bef756269729cf9"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.7.1/fingerprint-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19a0e356847e6172aafb7cdbc66531b24c14d2fa61d078ea9a5b06f9723e13d2"
    end
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
