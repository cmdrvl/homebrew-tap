class Veil < Formula
  desc "Data exfiltration guard for AI coding agents"
  homepage "https://github.com/cmdrvl/veil"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.4.0/veil-v0.4.0-darwin-arm64.tar.gz"
      sha256 "73f005aabdead3033a4487517deefb478979fef5aa4b5b5caaf0eade4980e791"
    end

    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.4.0/veil-v0.4.0-darwin-x86_64.tar.gz"
      sha256 "eb17060828e9a316aa054126c19341053b6dd77e5b225e13089fafb054e6086f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.4.0/veil-v0.4.0-linux-arm64.tar.gz"
      sha256 "c076bb164e538087486102bc88735e5da65cab9c76b36abbf2a2fe5140d7ba5c"
    end

    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.4.0/veil-v0.4.0-linux-x86_64.tar.gz"
      sha256 "b668de466feb3f83b4f10a51d38fdb3cc7cbb7d9096d7d9cd4812922b19d5ba8"
    end
  end

  def install
    bin.install "veil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veil --version")
  end
end
