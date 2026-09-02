# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.5.1/verify-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "8b8f0f517847333b2fb66691b1952fcca293aa58e6485a94b969de7424681075"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.5.1/verify-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "b836f99a5026fce31f27bc7c975091833a7652d9d38d53d8c44bbfde7632a2a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.5.1/verify-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6f59e9943089314bfc5306d568a13a35066f128006849e0b06eb3573d2b1f1a"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.5.1/verify-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2490b2d5121dd21ab55f1a3173324ec0d13f5ab40fea90159e56795dcb96cea5"
    end
  end

  def install
    bin.install "verify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/verify --version")
    assert_match "verify doctor health: healthy", shell_output("#{bin}/verify doctor health")
  end
end
