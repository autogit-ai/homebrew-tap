class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.13/autogit-v1.0.13-aarch64-apple-darwin.tar.gz"
      sha256 "58071a34a3555883b2badb6c7596b1d9563875776caa1283cb4414146589df64"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
