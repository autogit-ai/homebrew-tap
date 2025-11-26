class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v0.2.5/autogit-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "a437993d7b7f7b9356e284024a3d376e35c298fed12590eafcd6081a1439c907"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
