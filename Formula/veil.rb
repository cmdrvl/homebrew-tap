class Veil < Formula
  desc "Data exfiltration guard for AI coding agents"
  homepage "https://github.com/cmdrvl/veil"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.0/veil-v0.2.0-darwin-arm64.tar.gz"
      sha256 "4788b2c7a50cc065dcc7f01e9a3a38e4fe4f43916978440fe56ec614c9a402ba"
    end
    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.0/veil-v0.2.0-darwin-x86_64.tar.gz"
      sha256 "0c36b96644d3dbd938fcff0cd50f75b508e498675c89afb3d1003c7305be639d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.0/veil-v0.2.0-linux-arm64.tar.gz"
      sha256 "016af277232255060c1dc4f511e1d57a55325b5162d83ec19e5fbbef42d71199"
    end
    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.0/veil-v0.2.0-linux-x86_64.tar.gz"
      sha256 "3ff91a5ec567115f50a32bc5a4705a16b81cb12f62812e6840811a90ac0638bc"
    end
  end

  def install
    bin.install "veil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veil --version")
  end
end
