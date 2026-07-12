class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.10.0/fingerprint-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "20de38a14d9a04317d04d6be5e7e862f49ea891f0153e9f55669f3f0be72a6cd"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.10.0/fingerprint-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "4c5f96f6f5ba0a2a4c46d5dc8161b4991f8044ebba4bb7e823fd9e19f3dafe01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.10.0/fingerprint-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "32f75d6c1d6f6de70444e43b63c8c0ffae094a92089a7262ea1e8b89977ef1b8"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.10.0/fingerprint-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5087965ca91f189ebef4c224d1716747b3dd6f3c6535e07291901a43853ba92a"
    end
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
