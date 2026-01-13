class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.66"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.66/autogit-v1.0.66-aarch64-apple-darwin.tar.gz"
      sha256 "a513ab46f6496f2940b4acafc230311de5b7ff42c579de3abfde110ee23ea347"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
