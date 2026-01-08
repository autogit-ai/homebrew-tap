class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.39"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.39/autogit-v1.0.39-aarch64-apple-darwin.tar.gz"
      sha256 "7d892a05d0905473ae1f3b3765355eb5a2d744434addfb7ff82cba8a35eba1bf"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
