# typed: false
# frozen_string_literal: true

class Twinning < Formula
  desc "Protocol-faithful interface twins for fast extractor iteration"
  homepage "https://github.com/cmdrvl/twinning"
  version "0.3.2"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.3.2/twinning-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "e03375f32d0b62095303a6ff28e32379f5e217eb869a5aa4613f49a1561be377"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.3.2/twinning-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "6f1971df976edf0425cd4ef6700d2fbee7cf3106512d626903281089141e1c84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.3.2/twinning-v0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b539e2b645985de122fb1516a95677ddf77be2e972066f79fe72dfd503f2ffdf"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.3.2/twinning-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6dec9200583f2318a490f77eb97a4ed45088c5016276d9003adecd3507af453d"
    end
  end

  def install
    bin.install "twinning"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twinning --version")
  end
end
