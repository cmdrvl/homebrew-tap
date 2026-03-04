# typed: false
# frozen_string_literal: true

class Shape < Formula
  desc "Structural comparability gate for CSV datasets"
  homepage "https://github.com/cmdrvl/shape"
  version "0.4.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.4.0/shape-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "9dae34dba4f0a8e8d9045ff41258045910510f5058dbeab673075f3d189bb841"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.4.0/shape-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "826fd956fce82c3a6eac47173f1510ea4b988a3666d7a81d54a4ec8e389a7b2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.4.0/shape-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c694f896095c341ebcb8391a12f878a1c5f3b192ade5ad9430c8815b8dae57b6"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.4.0/shape-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e3ad70fa0d950d4a55c23ab2db099d3aed52e2351fddb7eedb9d887a528046b"
    end
  end

  def install
    bin.install "shape"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shape --version")
  end
end
