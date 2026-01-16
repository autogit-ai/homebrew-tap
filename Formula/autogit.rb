class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.1.5/autogit-v1.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "3983571cc4a3750dabc3cf8211ff147f7c2334825f722c054635dc7c74c825c5"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
