class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.69"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.69/autogit-v1.0.69-aarch64-apple-darwin.tar.gz"
      sha256 "5fada8d6ffb542174243e8789f39d9272aef378d31debf2814114a182df176d5"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
