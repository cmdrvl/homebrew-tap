class Fingerprint < Formula
  desc "Determine whether an artifact matches a known template"
  homepage "https://github.com/cmdrvl/fingerprint"
  version "0.6.2"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.6.2/fingerprint-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "6b3a5b3a2c27e1c704afe902f20f620e263847db47ba6ce5408d0b47f8096f5d"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.6.2/fingerprint-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "35d9cc6716ca7b781a8bfb7b5089e99e31245e12a923ae8033e74709a13767dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.6.2/fingerprint-v0.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e855ccb718c56aecc8ebdee4f625fd4a84dcadd1a3ebe702a558ac3b5ab807d"
    end
    on_intel do
      url "https://github.com/cmdrvl/fingerprint/releases/download/v0.6.2/fingerprint-v0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77d78c42de0694e20ed61de4162db94a1a1fd07d2d9611789b9a9457418f60d3"
    end
  end

  def install
    bin.install "fingerprint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerprint --version")
  end
end
