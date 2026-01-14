class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.67"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.67/autogit-v1.0.67-aarch64-apple-darwin.tar.gz"
      sha256 "4eb90e3e1d59a5bd136147cfb4c86435bcf19a56ffb6008602d262700ee57067"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
