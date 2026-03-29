# typed: false
# frozen_string_literal: true

class Vacuum < Formula
  desc "Inventory artifacts into deterministic JSONL manifests"
  homepage "https://github.com/cmdrvl/vacuum"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.3.1/vacuum-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "68aa5cde28469ec90d88a20a932deb08cd6e04d45a955506aef9ba88202cc595"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.3.1/vacuum-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "d872f273e026fd995addeb7b99eb2302df508e10009ff275aa7aec6075e11b99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.3.1/vacuum-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "98a8f64234bb72c26f402f17a57bb864043d065a64034021e8dcc4d03cc968db"
    end
    on_intel do
      url "https://github.com/cmdrvl/vacuum/releases/download/v0.3.1/vacuum-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f16d69c78298a6ad5605bba5198d59b2bdd9903714d246152625044be3fe3772"
    end
  end

  def install
    bin.install "vacuum"
    bin.install "s3-to-vacuum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacuum --version")
  end
end
