# typed: false
# frozen_string_literal: true

class Airlock < Formula
  desc "Prove what crossed the model boundary"
  homepage "https://github.com/cmdrvl/airlock"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/airlock/releases/download/v0.1.3/airlock-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "757b8c15a56e33720f28ee272abac24d178ffdd14e48768177e60ac6257080fb"
    else
      url "https://github.com/cmdrvl/airlock/releases/download/v0.1.3/airlock-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "c0168d3cdc7deb71f29b1a5fe0a9236bf48a8efd95d06dc4b532b75ced2f550a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/airlock/releases/download/v0.1.3/airlock-0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "88970b4177d50e6246968927b889e173b32a6ca29d17f27cef2fcb67bc4c3ef4"
    else
      url "https://github.com/cmdrvl/airlock/releases/download/v0.1.3/airlock-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b18c7d2fc1ce04ef579148a7546fdb45d46c1151c5030f72e94eb7fcec12622"
    end
  end

  def install
    bin.install "airlock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlock --version")
  end
end
