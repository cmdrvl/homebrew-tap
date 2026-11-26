# typed: false
# frozen_string_literal: true

class Vacuum < Formula
  desc "Inventory artifacts into deterministic JSONL manifests"
  homepage "https://github.com/cmdrvl/vacuum"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.6.1/vacuum-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "525870f3ddb54886109c7a2273c6ecfefdf352df3d1279d81c2ef893e884488c"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.6.1/vacuum-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "341fc6667efc24356fe0cb2541b55c059ff75a7011e007a562788ccf723745af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.6.1/vacuum-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64775730469490ffe9e7f39615ee2c40010df1d29a9c085b161f9f0556c294ad"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.6.1/vacuum-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f656ad0b42404c339b2a2f2ef7e6e61e535da7cd452e03a968378707d8121931"
    end
  end

  def install
    bin.install "vacuum"
    bin.install "s3-to-vacuum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacuum --version")
  end
end
