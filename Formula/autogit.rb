class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.65"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.65/autogit-v1.0.65-aarch64-apple-darwin.tar.gz"
      sha256 "c19c32a958e4a3b0e7d0a41b271841cf1b34b0e6b25bf57973872590740a984d"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
