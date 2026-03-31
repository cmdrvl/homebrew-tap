class Lock < Formula
  desc "Pin artifacts, fingerprints, and tool versions into a self-hashed dataset lockfile"
  homepage "https://github.com/cmdrvl/lock"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.2/lock-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "05d35fdb3ade590c436f12a399686bf9aa1fd01e03bbec97bc5c9b455f36e77a"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.2/lock-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "6c0af30520314ba3d5cf372172398e9bacac3e492a0883f0b4eadaa8028321a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.2/lock-0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1f8aa3f1d777c4b31f468c0e5c2cbe63eb5f5e2faa14e2ef1cdf25a00692b1f3"
    else
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.2/lock-0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7ea5308d7d8afa8b6a170a02bb2d3ad47105b53fda5cd0e637e955933c76c7d7"
    end
  end

  def install
    bin.install "lock"
  end

  test do
    assert_match "lock 0.3.2", shell_output("#{bin}/lock --version")
  end
end
