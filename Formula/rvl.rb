# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  version "0.5.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.5.1/rvl-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "5b8c698aa11cb20266c1e05e6195c7a52775733fcda605ef8dbf04e2dee06476"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.5.1/rvl-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "8514e86539a272628337f755f67abc9237e4d69086a4a74b9247991a58e420f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.5.1/rvl-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f7d3f344591ccb28bb03c448d7f992125ff824d3150d9cf08d43cfafec403206"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.5.1/rvl-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0384604cb6e6dfb75c1da2527e76225cb97ebb1b1afaeae98d8d367d50553e3"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
