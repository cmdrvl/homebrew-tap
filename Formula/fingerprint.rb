class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  license "MIT"
  version "0.12.0"
  revision 1

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.12.0/fingerprint-v0.12.0-aarch64-apple-darwin-licensed.tar.gz"
      sha256 "78086723c7a8047ccb1f3c51c412f4b2533885f2589ca7f23254e5585a1418af"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.12.0/fingerprint-v0.12.0-x86_64-apple-darwin-licensed.tar.gz"
      sha256 "234f694a28fc0f5615ace9b5b1d305665f91cd21e3451d875e90c1576e9384d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.12.0/fingerprint-v0.12.0-aarch64-unknown-linux-gnu-licensed.tar.gz"
      sha256 "fc6c02bc2e814731e454fdbdf3287b7bb9629255c83ab717e9cb7fafca2118ae"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.12.0/fingerprint-v0.12.0-x86_64-unknown-linux-gnu-licensed.tar.gz"
      sha256 "d8e7868e8f992679fa572741d6d1c1f99262db020f1c843e95f9c685b01cf60c"
    end
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
