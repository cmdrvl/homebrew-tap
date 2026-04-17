class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  version "0.6.1"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.6.1/fingerprint-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "e0ddcc70f97367f409c79a3a651ff2f71cc25ffc2eb765f2e1c163ad08769119"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.6.1/fingerprint-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "30bf197ab5d358246d312040818577c2af1036d409f8afaeb6c891fcc48aed30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.6.1/fingerprint-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c17d3106c7962a45174bee99b162060f7aabd8b19247e9d85458403ee434004"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.6.1/fingerprint-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37dd1c6e30556ba9ae330ba165762a8fb29726035505f27e3271e793dde374d9"
    end
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
