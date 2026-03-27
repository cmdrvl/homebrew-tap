# typed: false
# frozen_string_literal: true

class Airlock < Formula
  desc "Prove what crossed the model boundary"
  homepage "https://github.com/cmdrvl/airlock"
  url "https://github.com/cmdrvl/airlock/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8495c3838720299c620631802e02bbb24b8186c3daa18a655a1bca1e907f62d5"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "."), "--locked"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlock --version")
  end
end
