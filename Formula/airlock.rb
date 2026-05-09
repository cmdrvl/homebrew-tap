class Airlock < Formula
  desc "Prove what crossed the model boundary"
  homepage "https://github.com/cmdrvl/airlock"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/airlock/releases/download/v0.2.0/airlock-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "526ca1df821d61a93ad8e88f75e1bcfc5df906f7e8479708ab1419a1778c2c99"
    else
      url "https://github.com/cmdrvl/airlock/releases/download/v0.2.0/airlock-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "0f8c94b69560945ca9ed15d1f976d18f5030c8448906f59cb6e2030410cc7e07"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/airlock/releases/download/v0.2.0/airlock-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d2545ae2d3ecfb862ccaa8833955a5a664233454f7e35350d8e040fdb9412388"
    else
      url "https://github.com/cmdrvl/airlock/releases/download/v0.2.0/airlock-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f16182ac061a9bee7bab7a1403b150e6fec4e8ad83287a0b6593af6b6124e79"
    end
  end

  def install
    bin.install "airlock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlock --version")
  end
end
