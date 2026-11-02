# typed: false
# frozen_string_literal: true

class Twinning < Formula
  desc "Runnable twins of Postgres, REST, and Snowflake contracts, with an MCP server"
  homepage "https://cmdrvl.com/twinning/"
  version "0.7.1"
  license "MIT"


  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.7.1/twinning-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "8b5e791fc3629984100536bba698a1ab33dac0d4afddab3dfc42bb56c0289481"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.7.1/twinning-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "5aee77f84f8bf57bd87355e4db8b8cc47afb412e87726cbd8e977ec0dc50e3bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.7.1/twinning-v0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16b1fc1e284bfa476ccbba74ff2bae78cdae5c0fcdaca933a5a345c8abd25825"
    end
    on_intel do
      url "https://github.com/cmdrvl/twinning/releases/download/v0.7.1/twinning-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc092e67d86e1a429080610287c38b1e9e4508777f124ce91c33d8e0bd7f90cd"
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
