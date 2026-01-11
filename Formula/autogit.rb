class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.64"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.64/autogit-v1.0.64-aarch64-apple-darwin.tar.gz"
      sha256 "4c8e646686fe0f388944d4863f9711f42411dd4596152f5252c26a790d8508d6"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
