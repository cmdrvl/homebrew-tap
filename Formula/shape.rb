# typed: false
# frozen_string_literal: true

class Shape < Formula
  desc "Structural comparability gate for CSV datasets"
  homepage "https://github.com/cmdrvl/shape"
  version "0.3.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.3.0/shape-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "1f9e5d06c7b6c7e130f442873cdca670a1c7f23a0d297a958e3be6b940806984"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.3.0/shape-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "122045a117aa2654d031c84024d65061569056e6af9dec71250f20b3678b1360"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/shape/releases/download/v0.3.0/shape-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "002581e7b15e8ec3cb6edc8a34d39001348e1b64e012d1089e7b1959cc62c869"
    end
    on_intel do
      url "https://github.com/cmdrvl/shape/releases/download/v0.3.0/shape-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5535393867bbac02dae821b8c455a05d0adad4a4f7070247d880366c21c88dc5"
    end
  end

  def install
    bin.install "shape"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shape --version")
  end
end
