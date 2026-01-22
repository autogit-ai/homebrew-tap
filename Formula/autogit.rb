class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.1.38"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.1.38/autogit-v1.1.38-aarch64-apple-darwin.tar.gz"
      sha256 "7ee9ddf95f55bf0418731c4c611c73b053d06b82c4f98d05b01a2c48571444b9"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
