# typed: false
# frozen_string_literal: true

class Verify < Formula
  desc "Deterministic constraint evaluation for the epistemic spine"
  homepage "https://github.com/cmdrvl/verify"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.4/verify-v0.7.4-aarch64-apple-darwin.tar.gz"
      sha256 "5d343baa070ac421d01445e2d8dcfb2f4d51b0adba6d4fe3d81e43275702fc1e"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.4/verify-v0.7.4-x86_64-apple-darwin.tar.gz"
      sha256 "3a47faa6b734fcc6ef8737167b480bb67c7a5401619560bf802b4078f8976202"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.4/verify-v0.7.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a4a6b6f2c766b8fe716fcabe2520fe82a72568738c01b31d63ea824d58bc562"
    end
    on_intel do
      url "https://github.com/cmdrvl/verify/releases/download/v0.7.4/verify-v0.7.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a6c263896e1471425b062e9dc3ba5e660f75acdf36b13eedac8976a0fdfbfefa"
    end
  end

  def install
    bin.install "verify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/verify --version")
    assert_match "verify doctor health: healthy", shell_output("#{bin}/verify doctor health")
  end
end
