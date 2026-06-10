class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.9.0/fingerprint-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "64d69ae079addd507826dbaed2708c119b48a23a513a3805ee994a5cf32f194b"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.9.0/fingerprint-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "d32a785a6a4c622673cd104a63ee36dd0ce647e5303df769f791517476057381"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.9.0/fingerprint-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48d3727814051b49717a7d6013a53e8b03d0e6b944617dfc05d38407c1a887c8"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.9.0/fingerprint-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2417aefc7b805c4748df8c1311b7bdcdb9093e356e808d2e0980e61678fd5d6f"
    end
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
