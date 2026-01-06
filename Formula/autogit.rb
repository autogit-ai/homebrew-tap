class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.26"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.26/autogit-v1.0.26-aarch64-apple-darwin.tar.gz"
      sha256 "a7c19447c3449e4c9bf955b7dbb41524c69ed148005d0a26838961323855b025"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
