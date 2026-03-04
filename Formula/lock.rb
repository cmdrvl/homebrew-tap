# typed: false
# frozen_string_literal: true

class Lock < Formula
  desc "Pin artifacts, fingerprints, and tool versions into a self-hashed dataset lockfile"
  homepage "https://github.com/cmdrvl/lock"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.0/lock-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "9bbcd548b05124e1f1ff5aa372a1439012d0c843f0b16366cb9647d8812f55a1"
    end
    on_intel do
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.0/lock-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "4b4009f4b4096db0e3cd288aaf0b2994a3c1afec9c55ba40043e080ce0238854"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.0/lock-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5b62b61e7ef151b689cb80eec0782f4e884a656b4ea846fed542bb1f2d7196a"
    end
    on_intel do
      url "https://github.com/cmdrvl/lock/releases/download/v0.3.0/lock-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d8f9337563e7c2338e3707f1eeaf9e89371042f7ea9ed4995a69c7cb3782205"
    end
  end

  def install
    bin.install "lock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lock --version")
  end
end
