class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v0.1.1/autogit-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "255440b109687554188358c9c16041fb3bfcaa18ab8f4778110cf37e4202c7ef"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
