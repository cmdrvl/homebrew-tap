class Veil < Formula
  desc "Data exfiltration guard for AI coding agents"
  homepage "https://github.com/cmdrvl/veil"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.4.2/veil-v0.4.2-darwin-arm64.tar.gz"
      sha256 "019c4ae9a1ead680f5ef49a4ba85e21b24bb15cbfe984f569fe4674fadd6b718"
    end

    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.4.2/veil-v0.4.2-darwin-x86_64.tar.gz"
      sha256 "4c57de9b2c7f73a60bc4a229eff8837d71c898e37aa46715004c154e90f99bf8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.4.2/veil-v0.4.2-linux-arm64.tar.gz"
      sha256 "d778a0ffb0e6d37467526e68538e46edb606dda8694bdbb30f71b473a0f53abc"
    end

    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.4.2/veil-v0.4.2-linux-x86_64.tar.gz"
      sha256 "5877e5a184637c28ac17a9b3a1193b2e4333036f73a930f55ab72488f2e5793a"
    end
  end

  def install
    bin.install "veil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veil --version")
  end
end
