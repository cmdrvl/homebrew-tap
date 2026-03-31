# typed: false
# frozen_string_literal: true

class CmdrvlHash < Formula
  desc "Streaming content hashing for JSONL manifest records"
  homepage "https://github.com/cmdrvl/hash"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.3.2/hashbytes-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "fa07d712ec316d1f16ca745ce69ef2948f9f448b6905ea181639a27949fa2a33"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.3.2/hashbytes-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "2e65a11fa49299d792cd2ccf50a875feb9b4bc4d578de4573f91ce069eebf1c0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/hash/releases/download/v0.3.2/hashbytes-v0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e7101058d4cc6e82ebe9a8cc5b2fe07cbe177ff4bf7bba19fef5a73029cc452"
    end
    on_intel do
      url "https://github.com/cmdrvl/hash/releases/download/v0.3.2/hashbytes-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba71742b3fcfc23a04c1b3af0d1017ddb14b041589b5820b293fbe1e521fd7fd"
    end
  end

  def install
    bin.install "hashbytes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hashbytes --version")
  end
end
