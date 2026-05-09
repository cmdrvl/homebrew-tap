class Airlock < Formula
  desc "Prove what crossed the model boundary"
  homepage "https://github.com/cmdrvl/airlock"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/airlock/releases/download/v0.2.1/airlock-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "e8ae527825d0da37d7c5e8ded34afc01a2e293efb982dc135ec6b14de886515a"
    else
      url "https://github.com/cmdrvl/airlock/releases/download/v0.2.1/airlock-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "e88e3460a86942d10b56d3594445158c07dbe3289f5dc0f101ed5381b16ad706"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/airlock/releases/download/v0.2.1/airlock-0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "842379d0178b092c5dd80f9bffd918a1c84dad123e3a92e627c59bcb3a44cd60"
    else
      url "https://github.com/cmdrvl/airlock/releases/download/v0.2.1/airlock-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8172b94527deac51f33d365b327a9ad0244d21be69c5484853bec702bb9d0f2"
    end
  end

  def install
    bin.install "airlock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlock --version")
  end
end
