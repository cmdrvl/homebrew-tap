class Veil < Formula
  desc "Data exfiltration guard for AI coding agents"
  homepage "https://github.com/cmdrvl/veil"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.1.0/veil-v0.1.0-darwin-arm64.tar.gz"
      sha256 "0ee81747d49d5071bc96e3d0dca59d2241d195089c68b221dce5a71f95492471"
    end
    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.1.0/veil-v0.1.0-darwin-x86_64.tar.gz"
      sha256 "6a47a981be559cb794215350a5f36d75d9c2fda4b776fbaefeb1da8a5f710c69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.1.0/veil-v0.1.0-linux-arm64.tar.gz"
      sha256 "ce5bb0c585df15742c642c03487619c28be2030e80772bcab474e81dfbf1c666"
    end
    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.1.0/veil-v0.1.0-linux-x86_64.tar.gz"
      sha256 "c7aef9b17639df3be974f34a84ba1c253045c6eee1e0188c185b8420ff987e5f"
    end
  end

  def install
    bin.install "veil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veil --version")
  end
end
