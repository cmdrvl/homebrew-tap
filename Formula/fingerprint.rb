class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  version "0.4.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.4.1/fingerprint-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "48e9aae01355ca9655d2e3cb111e621ed35e156eedd73ad9e715a00b30449378"
    else
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.4.1/fingerprint-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "d6add8403559789e5513f0d74e563d796c2358a424995bf86cf81d3ae8572d89"
    end
  end

  on_linux do
    url "https://github.com/cmdrvl/fingerprint/releases/download/v0.4.1/fingerprint-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1a80233832d2f09b435112a39137089dff96f976e91011014866a5798c3c842d"
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
