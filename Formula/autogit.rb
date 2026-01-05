class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.22/autogit-v1.0.22-aarch64-apple-darwin.tar.gz"
      sha256 "b06d9951859c75827fd8660f8f36993ca3a65b5f0c718f6cb333e4267ab77166"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
