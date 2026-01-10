class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.56"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.56/autogit-v1.0.56-aarch64-apple-darwin.tar.gz"
      sha256 "d93d2a2fe14ce046a1b2940c9557cd6a9414d3c44a741874d110a6766fdfd9c7"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
