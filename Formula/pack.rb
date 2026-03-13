# typed: false
# frozen_string_literal: true

class Pack < Formula
  desc "Seal artifacts into immutable, self-verifiable evidence packs"
  homepage "https://github.com/cmdrvl/pack"
  version "0.2.2"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.2/pack-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "ef71d3eaf9dcd1dc82fdf2c10ce1e722dbe9cc1732f26c3268ad4aac5e614def"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.2/pack-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "01b71823b9a25e98a75aefc0af0d5e61af2639844387bb394078b1aa82128c2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.2/pack-0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83c0a8581e347a56d334147a26282f635eafebb8d206357ef98db1f1327c5a95"
    end
    on_intel do
      url "https://github.com/cmdrvl/pack/releases/download/v0.2.2/pack-0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3d2b3e16602187d541b6abb7b460acdd9ad8796432655f46b45a2ece646e21f"
    end
  end

  def install
    bin.install "pack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pack --version")
  end
end
