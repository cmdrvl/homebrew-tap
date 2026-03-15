class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  version "0.5.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.5.0/fingerprint-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "a3d86048e55c30b53c65d93dd369b842f13fa5064d747577867793b73a4d2348"
    else
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.5.0/fingerprint-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "c25f000ee0dfc7486831ce58a439229912e429ee49ae24ab16acfc3db4e9c73c"
    end
  end

  on_linux do
    url "https://github.com/cmdrvl/fingerprint/releases/download/v0.5.0/fingerprint-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f5be85f3611a988b206c070ec710592397ad186da5d419b621e464a60f5c2b12"
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
