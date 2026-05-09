class Veil < Formula
  desc "Data exfiltration guard for AI coding agents"
  homepage "https://github.com/cmdrvl/veil"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.3.0/veil-v0.3.0-darwin-arm64.tar.gz"
      sha256 "a83d96cf049f1c1302cbbed55d4f6114e442bae2b4bd6c58f09fc75767c6a107"
    end
    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.3.0/veil-v0.3.0-darwin-x86_64.tar.gz"
      sha256 "e540194f6cb9181a0f0547312faa7ada59045b106fe09341b525dc2b07a0b4be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.3.0/veil-v0.3.0-linux-arm64.tar.gz"
      sha256 "ba0cb47c02aed4997af523e919a5ab53033835058a09dedd5bac5292d7b0936a"
    end
    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.3.0/veil-v0.3.0-linux-x86_64.tar.gz"
      sha256 "5e8fbf5f6272a308bd97c6ae6eb85cbf4647023e8daff80416d15dacdcfbe56b"
    end
  end

  def install
    bin.install "veil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veil --version")
  end
end
