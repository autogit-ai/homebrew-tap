class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.51"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.51/autogit-v1.0.51-aarch64-apple-darwin.tar.gz"
      sha256 "bd22998091b897d469832b91d9e88aafbaa956e1c2a04d9d4ccf00e74b37f3f1"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
