class Airlock < Formula
  desc "Prove what crossed the model boundary"
  homepage "https://github.com/cmdrvl/airlock"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/airlock/releases/download/v0.4.0/airlock-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "f267b1d714758bffa0a569de900e9a0440fe01631a42620c44e02ed3c120cff0"
    else
      url "https://github.com/cmdrvl/airlock/releases/download/v0.4.0/airlock-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "eaed5cefc33d1e98fd566e7a264a7041cbab86725ee0bf30c1213d70a3228d9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/airlock/releases/download/v0.4.0/airlock-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b8120655bf72b1998dcadd20ab8df1e12aaf9c34c93196a6a842b3eee4680bb"
    else
      url "https://github.com/cmdrvl/airlock/releases/download/v0.4.0/airlock-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "70f334ae2528bd4300dcd9c2f06fc2dadc32c0d6d17bf8ee81be6aacf25fbcc1"
    end
  end

  def install
    bin.install "airlock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlock --version")
  end
end
