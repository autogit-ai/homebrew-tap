class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.44"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.44/autogit-v1.0.44-aarch64-apple-darwin.tar.gz"
      sha256 "2f1d69095ac5a11e8b46c7b0f3da597bc4fa026c72b38d69f707337e4bbc4a30"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
