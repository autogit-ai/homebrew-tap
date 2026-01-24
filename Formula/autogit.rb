class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.2.0/autogit-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "1f7665a420d74b4c1a2a8051cdada968bc63662b6567e8d2ac5cfd8470240bb8"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
