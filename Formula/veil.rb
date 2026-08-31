class Veil < Formula
  desc "Data exfiltration guard for AI coding agents"
  homepage "https://github.com/cmdrvl/veil"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.4.1/veil-v0.4.1-darwin-arm64.tar.gz"
      sha256 "81ff63fdbbfb6c47bffacf1085ed30c1f105147b55622f276a8fad499f7ef91f"
    end

    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.4.1/veil-v0.4.1-darwin-x86_64.tar.gz"
      sha256 "6315f4ff560eee4f589b036995b33335c82860f8deb6b2ba72d66c82700b18ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cmdrvl/veil/releases/download/v0.4.1/veil-v0.4.1-linux-arm64.tar.gz"
      sha256 "28f905ce787d1864e5b56d18a35a54ba09de005e843bb11e3b3f9fd6513cbf4e"
    end

    on_intel do
      url "https://github.com/cmdrvl/veil/releases/download/v0.4.1/veil-v0.4.1-linux-x86_64.tar.gz"
      sha256 "8458ea6dbe1713a56a54b011d89527a9be92b96f9e87fb6bf9ed19611097dbc0"
    end
  end

  def install
    bin.install "veil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veil --version")
  end
end
