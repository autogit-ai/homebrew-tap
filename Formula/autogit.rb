class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.2.1/autogit-v1.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "fbf28c7e6be74b8c2b738c3c0525bc7100b7ecd7e6962ca0371c86ca1abb373a"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
