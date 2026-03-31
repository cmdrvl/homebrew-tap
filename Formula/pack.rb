# typed: false
# frozen_string_literal: true

class Pack < Formula
  desc "Seal artifacts into immutable, self-verifiable evidence packs"
  homepage "https://github.com/cmdrvl/pack"
  version "0.2.3"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.3/pack-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "d52b3eef0c0ded3c66ede8e07e978bc7d28762e7a771cde7e3aafd285103bdad"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.3/pack-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "356ac96abbd2708af2970129c6f5e686f213273be785f79006765a67cfcb1cbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.3/pack-0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a73e3e4f21afb5856ea28bbc1213e93bbedb16159221d592e8a8d13165077530"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.3/pack-0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9096d75161cde090f054a7627a8f9fa6eeeafc4ff5eff33997ba1859aa85e97d"
    end
  end

  def install
    bin.install "pack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pack --version")
  end
end
