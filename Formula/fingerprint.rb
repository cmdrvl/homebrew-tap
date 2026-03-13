class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  version "0.4.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.4.2/fingerprint-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "5f5073a3d24c45f0071130bcd67c3b84b22abf4d97694b7d4292e8b2684e127d"
    else
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.4.2/fingerprint-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "ceb778b92d9a56df4679696dd75baa31589dbb5d49881d172bbd3a29ca0fa14a"
    end
  end

  on_linux do
    url "https://github.com/cmdrvl/fingerprint/releases/download/v0.4.2/fingerprint-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "df4c0add03690360564ab827618f1a0ba033103be507960bffd899833183e57b"
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
