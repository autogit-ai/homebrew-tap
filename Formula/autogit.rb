class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.0/autogit-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "10d2de34c5f91ae35c507e77c50c5e6c1e71af6ff5f743da57bb2670b1b255ab"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
