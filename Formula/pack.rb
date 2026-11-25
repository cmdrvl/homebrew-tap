# typed: false
# frozen_string_literal: true

class Pack < Formula
  desc "Seal artifacts into immutable, self-verifiable evidence packs"
  homepage "https://github.com/cmdrvl/pack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.7.0/pack-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "3d599796ac3ecde7099a5177e023ac2a6be70b42c58c016a76c85de6c0a5c2af"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.7.0/pack-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "cb975ed4726cc605ff2fcfd77715a2e6d899dacf5ff88fafa6cb274ed05d66ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.7.0/pack-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9bd95d162284757fb6454f1cb0175c11305595df63afc3cc08041d6da831670f"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.7.0/pack-0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3fd99f594a3b9f8a520ed81aad036f8c2e5e39b042a515996fb4e05926689106"
    end
  end

  def install
    bin.install "pack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pack --version")
  end
end
