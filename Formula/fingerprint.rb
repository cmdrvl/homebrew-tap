class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  version "0.8.0"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.8.0/fingerprint-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "0fce61d5446841afcf3fa20cab067ff755f8289dbc6823f0fc970900cffdc5fc"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.8.0/fingerprint-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "fea0a17dceb03418006dd68a8b27dbc5f9a0d96e8561cfd33e7e16d908741581"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.8.0/fingerprint-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "06dbabe5562021cce2a33a924b74c3963a61f8aaad7942073b06deea9cc21d36"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.8.0/fingerprint-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd004fc9751e3fd79817c35b38d6239e27d2238f294cb7113eb2ac67a1485175"
    end
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
