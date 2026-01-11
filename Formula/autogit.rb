class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.58"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.58/autogit-v1.0.58-aarch64-apple-darwin.tar.gz"
      sha256 "16240be6594ae15ccf8d4b5c5dbd74ad099ba596207cb473c38d18188c4c90dd"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
