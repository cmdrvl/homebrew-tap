# typed: false
# frozen_string_literal: true

class Canon < Formula
  desc "Resolve messy identifiers to canonical IDs using versioned registries"
  homepage "https://github.com/cmdrvl/canon"
  version "0.4.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.4.0/canon-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "ec386324052e26991efd6d4040060feec188014e3ed74905d97f1f8c6f2eb957"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.4.0/canon-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "d4cfda5e07dcab49d3d65f3dc9f1e9003733632d70bcdf806d7e22f51908d880"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/canon/releases/download/v0.4.0/canon-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8cdd9d4d8240e778a6d032ea33f9dc95cc554e252cf91c2faff9e6b6ab857af"
    end
    on_intel do
      url "https://github.com/cmdrvl/canon/releases/download/v0.4.0/canon-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65dbfb50d9cf6b93aa0cfeaad66fa4906dd9e37dca08252128cc4df075dad016"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end
end
