class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.2.2/autogit-v1.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "02f999d76d2896c8c2ab97a11ce7ab4a1f8e2e5ce464eb813e9924189287d9b7"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
