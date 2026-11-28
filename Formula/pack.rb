# typed: false
# frozen_string_literal: true

class Pack < Formula
  desc "Seal artifacts into immutable, self-verifiable evidence packs"
  homepage "https://github.com/cmdrvl/pack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.8.0/pack-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "8bf63cdcff22d53b87ca63edd98b5febb3a34163c11d817113fd3a96a938d96c"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.8.0/pack-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "b65388190340f7291bc3a3f86c99200404f25eca4c86d79847cec38882adb19c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.8.0/pack-0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "23151908a65d0f8be1f2eb18e2c642ad085d70957da6cafd08853460a9623b1f"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.8.0/pack-0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a3e9213899f6c73716af6fae64f676926e38b4781a395a934192d0b58b5c074"
    end
  end

  def install
    bin.install "pack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pack --version")
  end
end
