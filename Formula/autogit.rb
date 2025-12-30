class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.2/autogit-v1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "87c4698b5665f0552283609607da1569ae1ff6e4eb14c475a1bf61d0d693b685"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
