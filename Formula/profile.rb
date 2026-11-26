# typed: false
# frozen_string_literal: true

class Profile < Formula
  desc "Create, validate, and freeze column-scoping profiles"
  homepage "https://github.com/cmdrvl/profile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.12.0/profile-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "213a358c909552a063651d804d5196d1813005f192145fdfe807e122ba66ba6d"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.12.0/profile-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "f8045a35132255b312e014d3e9525f1f16dc25767cc9fe9c452f8415941f8dff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/profile/releases/download/v0.12.0/profile-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2298c1b20bd6397ce2a69a3b26d98b6e02f4728bc82e40153c3145b09cf85016"
    end
    on_intel do
      url "https://github.com/cmdrvl/profile/releases/download/v0.12.0/profile-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8a728c6eee55c3150c3bade3ea94f8faf9c3acfbf0c2b0bdce06a59a6cec750"
    end
  end

  def install
    bin.install "profile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/profile --version")
  end
end
