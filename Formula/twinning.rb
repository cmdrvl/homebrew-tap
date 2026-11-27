# typed: false
# frozen_string_literal: true

class Twinning < Formula
  desc "Runnable twins of Postgres, REST, and Snowflake contracts, with an MCP server"
  homepage "https://cmdrvl.com/twinning/"
  version "0.7.2"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.7.2/twinning-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "89dbe686b5ba4a41beea87b08c7675c14ef105352589d77c2fd7477fd77bbfc9"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.7.2/twinning-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "31239633bdd33bf76f31be7b26719cdce2c21b7262136dd6fcf688db515a7468"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.7.2/twinning-v0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f62bf21f7d0149e9bb57c0d9495397d70c30481c1ece403b2f46d7296b362025"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.7.2/twinning-v0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46ffb8c4f52f5bb1c3d6a8d8f246ce216f56b133e63d654815510b8b500cdd0c"
    end
  end

  def install
    bin.install "twinning"
    bin.install "twinning-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twinning --version")
  end
end
