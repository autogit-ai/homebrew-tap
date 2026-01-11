class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.57"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.57/autogit-v1.0.57-aarch64-apple-darwin.tar.gz"
      sha256 "830374e154f2c1dd561e9bb8074e2a7080cde62a8234128628a74f9ef45d73c5"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
