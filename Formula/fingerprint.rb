class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  version "0.5.1"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.5.1/fingerprint-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "1c39aebb5691789c80c353e322ca54c40cb04dcc70866326abf9ea3cf03afbd2"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.5.1/fingerprint-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "a805ed5398455687161a9b2652516e2e90f5bfd672682b58543fd638c4da830c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.5.1/fingerprint-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "15f7e3aa4d6c66b9445e1659b3f00970d004191e0354ebeaa4f13e39e7ac7de2"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.5.1/fingerprint-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e74f9b02aef628c440af973289cab9a0679076559550cdf529322e369faebd34"
    end
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
