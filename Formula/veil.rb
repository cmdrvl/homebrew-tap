class Veil < Formula
  desc "Data exfiltration guard for AI coding agents"
  homepage "https://github.com/cmdrvl/veil"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.2/veil-v0.2.2-darwin-arm64.tar.gz"
      sha256 "00e7d179b0a4b8e8f3527d9166484f40689b0ec52aa5dab40901ddca40e3e21c"
    end
    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.2/veil-v0.2.2-darwin-x86_64.tar.gz"
      sha256 "32a5d54ff2ae5bd30404922b55f482621ce1808fc9894f9e25ae6fe756bd96c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.2/veil-v0.2.2-linux-arm64.tar.gz"
      sha256 "c804523494c87a2dc2800582174c546d5612db84b38a99d5bd4324b3f9d0ffe9"
    end
    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.2/veil-v0.2.2-linux-x86_64.tar.gz"
      sha256 "13b5e4176c1e5d1a4a16b4c943167f5d2a4ff4199d5c1d3ec6f8e6e784d98f77"
    end
  end

  def install
    bin.install "veil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veil --version")
  end
end
