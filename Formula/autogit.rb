class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.1.1/autogit-v1.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "2868ce723770623bcc3eca5a4c276c9bddafacad869de5e18f46c99bc1c128bf"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
