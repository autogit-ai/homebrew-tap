class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://autogit.ai/releases/v0.1.0/autogit-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ad70b39e7c4482f2b921a0bffab671044ceb2d5afd230a6a4659d821ce5dbce9"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
