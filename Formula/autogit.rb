class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.3.0/autogit-v1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "a871d6d88f679321503d2ef29ac5fd4301450a940337291b293d0a3e12da56d5"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
