# typed: false
# frozen_string_literal: true

class Shape < Formula
  desc "Structural comparability gate for CSV datasets"
  homepage "https://github.com/cmdrvl/shape"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.2.0/shape-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "d39bb0f401e4ff08582808a0b1f7183d53539b4b2bedafed208f27fcec70bea5"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.2.0/shape-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "03cdb5a18d6553b06108ee6f7212eacf290878e0083a3263eb445fb2510f75c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.2.0/shape-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a0ed4bf07625c21dfbc1b0f7579473546aa28ff061fbd91331a0b53dcb065e7"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.2.0/shape-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "826976e5360641bd749c94e5014a06d0f99aeb34682c4ea3b18ccdbf12835689"
    end
  end

  def install
    bin.install "shape"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shape --version")
  end
end
