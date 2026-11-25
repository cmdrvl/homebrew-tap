# typed: false
# frozen_string_literal: true

class Assess < Formula
  desc "Deterministic decision classification over a spine evidence bundle"
  homepage "https://github.com/cmdrvl/assess"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/assess/releases/download/v0.4.1/assess-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "07a7e609155e78c773e7083288409cd40d0526ba8364935515861bb5a2af3310"
    end
    on_intel do
      url "https://github.com/cmdrvl/assess/releases/download/v0.4.1/assess-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "9193d0cf5ed3c5e907c756362fe06cb48da9f8ab9d628101e54445e1bd10b562"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/assess/releases/download/v0.4.1/assess-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e4f25099d021098a7a331ba1d9366a9538b47b08b97bf27b105fe75d7d969b73"
    end
    on_intel do
      url "https://github.com/cmdrvl/assess/releases/download/v0.4.1/assess-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19c1e04554e03ea9a1b4de3bffc29ed3152799682d64b73f0dc21d02e57b51e8"
    end
  end

  def install
    bin.install "assess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/assess --version")
  end
end
