class Airlock < Formula
  desc "Prove what crossed the model boundary"
  homepage "https://github.com/cmdrvl/airlock"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/airlock/releases/download/v0.3.0/airlock-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "6e5f76a02be62b974776933e6a75517a8128c95787808650a2ae3970a1da8f7d"
    else
      url "https://github.com/cmdrvl/airlock/releases/download/v0.3.0/airlock-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "1565e352f7a2ac460ec4618bbb774a1582ea1e65b53eeb809f5fc991d137ebd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/airlock/releases/download/v0.3.0/airlock-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "122c273f314237a964aa78ad374134d92d0c9a8366a5e5f3bd9fae6e7d3c77a5"
    else
      url "https://github.com/cmdrvl/airlock/releases/download/v0.3.0/airlock-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f36ed1d18aee8be6914493386ba817fb9682e26bbd39599538c2edff771d614"
    end
  end

  def install
    bin.install "airlock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlock --version")
  end
end
