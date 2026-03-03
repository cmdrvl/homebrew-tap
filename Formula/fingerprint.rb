class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  version "0.3.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.3.0/fingerprint-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "a6fc05f7b68c59a994fc45b11383a568c72155f7616f9cd7ef16857cec4d25a6"
    else
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.3.0/fingerprint-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "4af1e6942241ba0fa2653e59ffeb9f8ce680e11a2ee797dfebc89ddbc7b78a93"
    end
  end

  on_linux do
    url "https://github.com/cmdrvl/fingerprint/releases/download/v0.3.0/fingerprint-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "17af37b9c5d021822238201f8bb8e4569177d16d0dc840f168c5c39f4a81ca14"
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
