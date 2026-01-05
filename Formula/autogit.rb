class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.24/autogit-v1.0.24-aarch64-apple-darwin.tar.gz"
      sha256 "dad5aa607c0b2cc1eafa9d5554513701c83c7d9c5f3c91430846f97467dc894c"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
