class Veil < Formula
  desc "Data exfiltration guard for AI coding agents"
  homepage "https://github.com/cmdrvl/veil"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.1/veil-v0.2.1-darwin-arm64.tar.gz"
      sha256 "dbf7d83440b89aaac9d99414e57970d21759beadab7039008d67cb8fa462d617"
    end
    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.1/veil-v0.2.1-darwin-x86_64.tar.gz"
      sha256 "481c13e9eedf15474712863afafce74bb0b1dc63e3985bbedd41406681ebb299"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.1/veil-v0.2.1-linux-arm64.tar.gz"
      sha256 "6e90bae8172beb1e13dca733ab5bfa8d892bd95af67ce8566c2b3a28ee31b751"
    end
    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.1/veil-v0.2.1-linux-x86_64.tar.gz"
      sha256 "a649e6945bed33892aa8d84b34f0e09aba6936c36a8acf1c34e498d45703ee3f"
    end
  end

  def install
    bin.install "veil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veil --version")
  end
end
