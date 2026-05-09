class Veil < Formula
  desc "Data exfiltration guard for AI coding agents"
  homepage "https://github.com/cmdrvl/veil"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.3.1/veil-v0.3.1-darwin-arm64.tar.gz"
      sha256 "09dc5e6bdd14a092caa07efcfd76aecc256ce05330e3cd331a87a54edb1ca1b7"
    end

    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.3.1/veil-v0.3.1-darwin-x86_64.tar.gz"
      sha256 "92fab0f2daa06a65f201015c87f61760540bab487c727e23c9015dac91642e39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.3.1/veil-v0.3.1-linux-arm64.tar.gz"
      sha256 "b36c73a8ad96e99e2e9468576126224ec1fdb6ab3ee84bf88b1995675cd00caf"
    end

    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.3.1/veil-v0.3.1-linux-x86_64.tar.gz"
      sha256 "e0f127e8b7b5a71c12b7866da3fc426e7874658c1da2bff5f9e8038e927c9054"
    end
  end

  def install
    bin.install "veil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veil --version")
  end
end
