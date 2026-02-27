# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  version "0.4.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.4.0/rvl-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "473aabf501e9fdd353067d6d10946c3c027b3947e39d74b11f25800f0be4035b"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.4.0/rvl-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "5966fe2ac027cf33a34a5e47b3fff471672da86d58ac2b1a504e73b2356a1768"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.4.0/rvl-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "926daa21bad19748debdfdfa9bf2f62224c0325bbb3fbf829bc599dbc0769a74"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.4.0/rvl-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "efbb5c49e979228ca943ea0821af5c701f1731a47e3b8d2f0636b0ab85fcee42"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
