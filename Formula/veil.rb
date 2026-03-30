class Veil < Formula
  desc "Data exfiltration guard for AI coding agents"
  homepage "https://github.com/cmdrvl/veil"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.3/veil-v0.2.3-darwin-arm64.tar.gz"
      sha256 "48158bd4b77c75e97b01fcd786b426dadc6df2297d0f65c2d92622809ab41b95"
    end
    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.3/veil-v0.2.3-darwin-x86_64.tar.gz"
      sha256 "475fca410c34ad8123ae358956c28717ad4542618ff5637d41f10ce1e5d8030b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.3/veil-v0.2.3-linux-arm64.tar.gz"
      sha256 "6a04e012c264c5048d8c6f1a850273d414cf96eab0d48ede9ac2773f596256b7"
    end
    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.2.3/veil-v0.2.3-linux-x86_64.tar.gz"
      sha256 "a10daad8c19f0f599a4dde78602594d1f39493c9ee5cad39977e9c56a9c7b263"
    end
  end

  def install
    bin.install "veil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veil --version")
  end
end
