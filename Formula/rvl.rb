# typed: false
# frozen_string_literal: true

class Rvl < Formula
  desc "Reveal the smallest set of numeric changes that explain what actually changed"
  homepage "https://github.com/cmdrvl/rvl"
  version "0.6.0"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.6.0/rvl-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "fe29d7521da5c69e333debe0880594a7e03842258e6e5f10bf570653699fedba"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.6.0/rvl-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "d49d25ea1c8a80700a61dc0f5fa65c9f7b628b3384dcdb97197431fb60cb0ec3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.6.0/rvl-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cd326880ee75e073982ca025bd54ea19c59a4b2f2fadc10809183b25d1ef5832"
    end
    on_intel do
      url "https://github.com/cmdrvl/rvl/releases/download/v0.6.0/rvl-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99dacaed1325a1bc4436201c377a337c1e508e2af64d66fa3a933a73d2ee06f7"
    end
  end

  def install
    bin.install "rvl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rvl --version")
  end
end
