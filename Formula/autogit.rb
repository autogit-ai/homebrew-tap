class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.55"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.55/autogit-v1.0.55-aarch64-apple-darwin.tar.gz"
      sha256 "f0d6c729eff7b94a322a40c38d6f1cdda73fdd958354173c14def65299d1fcb3"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
