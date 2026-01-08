class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.42"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.42/autogit-v1.0.42-aarch64-apple-darwin.tar.gz"
      sha256 "63a3241258a43eb88c78847d62b1899adc6a53df09bade0940aade5b7902eab6"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
