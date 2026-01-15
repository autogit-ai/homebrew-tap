class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.1.2/autogit-v1.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "cd70f10808798c55675360256c9df57756ff9e50712aa30779d7831df023d728"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
