class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.1.8/autogit-v1.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "ff7aad506379d7bdf19185dad69af0b6a131b40bc19998e33d44d86e402bedcd"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
